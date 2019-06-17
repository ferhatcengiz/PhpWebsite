<?php

namespace App\Controller\Admin;

use App\Entity\Admin\Massages;
use App\Form\Admin\MassagesType;
use App\Repository\Admin\MassagesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/massages")
 */
class MassagesController extends AbstractController
{
    /**
     * @Route("/", name="admin_massages_index", methods="GET")
     */
    public function index(MassagesRepository $massagesRepository): Response
    {
        return $this->render('admin/massages/index.html.twig', ['massages' => $massagesRepository->findAll()]);
    }

    /**
     * @Route("/new", name="admin_massages_new", methods="GET|POST")
     */
    public function new(Request $request): Response
    {
        $massage = new Massages();
        $form = $this->createForm(MassagesType::class, $massage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($massage);
            $em->flush();

            return $this->redirectToRoute('admin_massages_index');
        }

        return $this->render('admin/massages/new.html.twig', [
            'massage' => $massage,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="admin_massages_show", methods="GET")
     */
    public function show(Massages $massage,$id): Response
    {
        $em = $this->getDoctrine()->getManager();
        $sql = 'UPDATE massages SET status="Okundu" WHERE id=:id ';
        $statement= $em->getConnection()->prepare($sql);
        $statement->bindValue('id', $id );
        $statement->execute();
        return $this->render('admin/massages/show.html.twig', ['massage' => $massage]);
    }

    /**
     * @Route("/{id}/edit", name="admin_massages_edit", methods="GET|POST")
     */
    public function edit(Request $request, Massages $massage): Response
    {
        $form = $this->createForm(MassagesType::class, $massage);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('admin_massages_index', ['id' => $massage->getId()]);
        }

        return $this->render('admin/massages/edit.html.twig', [
            'massage' => $massage,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}/update", name="admin_massages_update", methods="GET|POST")
     */
    public function update($id,Request $request, Massages $massage): Response
    {
        $em = $this->getDoctrine()->getManager();
        $sql = 'UPDATE massages SET comment=:comment WHERE id=:id ';
        $statement= $em->getConnection()->prepare($sql);
        $statement->bindValue('comment', $request->request->get('comment') );
        $statement->bindValue('id', $id );
        $statement->execute();

        return $this->render('admin/massages/show.html.twig', ['massage' => $massage,
            'id' => $id,
        ]);
    }

    /**
     * @Route("/{id}", name="admin_massages_delete", methods="DELETE")
     */
    public function delete(Request $request, Massages $massage): Response
    {
        if ($this->isCsrfTokenValid('delete'.$massage->getId(), $request->request->get('_token'))) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($massage);
            $em->flush();
        }

        return $this->redirectToRoute('admin_massages_index');
    }
}
