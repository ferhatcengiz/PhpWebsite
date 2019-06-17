<?php

namespace App\Controller;

use App\Entity\Admin\Massages;
use App\Entity\User;
use App\Entity\Users;
use App\Form\Admin\MassagesType;
use App\Form\UsersType;
use App\Form\UserType;
use App\Repository\Admin\CategoryRepository;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageRepository;
use App\Repository\UserRepository;
use App\Repository\UsersRepository;
use http\Env\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/home", name="home")
     */
    public function index(SettingRepository $settingRepository,CategoryRepository $categoryRepository)
    {
        $data=$settingRepository->findAll();

        $em = $this->getDoctrine()->getManager();
        $sql="SELECT * FROM product WHERE status='True' ORDER BY ID DESC LIMIT 5";
        $sql_product="SELECT * FROM product WHERE status='True' ORDER BY ID DESC LIMIT 60";
        $statement=$em->getConnection()->prepare($sql);
        //$statement->bindValue('parentid',$parent);
        $statement->execute();
        $sliders = $statement->fetchAll();

        $product=$em->getConnection()->prepare($sql_product);
        $product->execute();
        $pro = $product->fetchAll();


        $cats= $this->categorytree();
        $cats[0]='<ul id="menu-v">';

        return $this->render('home/index.html.twig', [
            'data'=>$data,
            'pro'=> $pro,
            'cats'=>$cats,
            'sliders'=>$sliders,
        ]);
    }
    public function categorytree($parent=0, $user_tree_array=''){
        if(!is_array($user_tree_array))
            $user_tree_array=array();

        $em = $this->getDoctrine()->getManager();
        $sql="SELECT * FROM category WHERE status='True' AND parentid=".$parent;
        $statement=$em->getConnection()->prepare($sql);
        $statement->bindValue('parentid',$parent);
        $statement->execute();
        $result = $statement->fetchAll();

        if(count($result)>0){
            $user_tree_array[]="<ul>";
            foreach ($result as $row){
                $user_tree_array[]="<li><a href='/category/".$row['id']."'>".$row['title']."</a>";
                $user_tree_array = $this->categorytree($row['id'],$user_tree_array);
            }
            $user_tree_array[]="</li></ul>";
        }
        return $user_tree_array;
    }
    /**
     * @Route("/category/{catid}/", name="category_products", methods="GET")
     */

    public function CategoryProducts($catid, CategoryRepository $categoryRepository)
    {
        $cats=$this->categorytree();
        $cats[0]='<ul id="menu-v">';
        $data=$categoryRepository->findBy(
            ['id'=>$catid]
        );
        $em = $this->getDoctrine()->getManager();
        $sql = 'SELECT * FROM product WHERE status="True" AND category_id= :catid';
        $statement= $em->getConnection()->prepare($sql);
        $statement->bindValue('catid', $catid);
        $statement->execute();

        $products = $statement->fetchAll();


        return $this->render('home/products.html.twig', [
            'data'=>$data,
            'products'=>$products,
            'cats' => $cats,

        ]);
    }

    /**
     * @Route("/product/{id}/", name="product_detail", methods="GET")
     */

    public function ProductDetail($id,ProductRepository $productRepository,ImageRepository $imageRepository )
    {
        $data=$productRepository->findBy(
            ['id'=>$id]
        );
        $images=$imageRepository->findBy(
            ['product_id'=>$id]
        );
        $cats = $this->categorytree();
        $cats[0]='<ul id="menu-v">';

        return $this->render('home/product_detail.html.twig', [
            'data'=>$data,
            'cats'=>$cats,
            'images'=>$images,
        ]);
    }

    /**
     * @Route("/hakkimizda",name="hakkimizda")
     */

    public function hakkimizda(SettingRepository $settingRepository)
    {

        $data = $settingRepository->findAll();
        return $this->render('home/hakkimizda.html.twig',[
            'data'=>$data,
        ]);
    }
    /**
     * @Route("/referans",name="referans")
     */
    public function referanslar(SettingRepository $settingRepository){
        $data = $settingRepository->findAll();

        return $this->render('home/referans.html.twig',[
            'data'=> $data,
        ]);
    }
    /**
     * @Route("/iletisim",name="iletisim", methods="GET|POST")
     */
    public function iletisim(SettingRepository $settingRepository,\Symfony\Component\HttpFoundation\Request $request){

        $massage = new Massages();
        $form = $this->createForm(MassagesType::class, $massage);
        $form->handleRequest($request);
        $submittedToken = $request->request->get('token');

        if ($form->isSubmitted()) {
            if($this->isCsrfTokenValid('form-massage',$submittedToken)) {
                $em = $this->getDoctrine()->getManager();
                $em->persist($massage);
                $em->flush();
                $this->addFlash('succes', 'Mesajınız Başarıyla Gönderilmiştir.');

                return $this->redirectToRoute('iletisim');
            }
        }
        $data = $settingRepository->findAll();
        return $this->render('home/iletisim.html.twig',[
            'data'=> $data,
            'massage'=>$massage,
        ]);
    }

    /**
     * @Route("/newuser", name="new_user", methods="GET|POST")
     */
    public function newuser(\Symfony\Component\HttpFoundation\Request $request,UserRepository $userRepository): \Symfony\Component\HttpFoundation\Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class,$user);
        $form->handleRequest($request);

        $submittedToken = $request->request->get('token');
        if ($this->isCsrfTokenValid('user-form',$submittedToken)) {

            if ($form->isSubmitted()) {


                $emaildata = $userRepository->findBy(
                    ['email' => $user->getEmail()]
                );

                if ($emaildata == null) {
                    $em = $this->getDoctrine()->getManager();
                    $user->setRoles("ROLE_USER");
                    $em->persist($user);
                    $em->flush();
                    $this->addFlash('success', 'Üye kaydınız başarıyla oluşturulmuştur . Login olabilirsiniz');
                    return $this->redirectToRoute('app_login');
                }
                else {
                    $this->addFlash('error', $user->getEmail(). "email adresi var");

                }
            }
        }

        return $this->render('home/newuser.html.twig',[
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }



}
