<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20181214221650 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE setting (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(100) DEFAULT NULL, description VARCHAR(255) DEFAULT NULL, keywords VARCHAR(255) DEFAULT NULL, company VARCHAR(255) DEFAULT NULL, address VARCHAR(255) DEFAULT NULL, fax VARCHAR(15) DEFAULT NULL, phone VARCHAR(15) DEFAULT NULL, email VARCHAR(50) DEFAULT NULL, smtpserver VARCHAR(100) DEFAULT NULL, smtpemail VARCHAR(50) DEFAULT NULL, smtppassword VARCHAR(20) DEFAULT NULL, smtpport INT DEFAULT NULL, aboutus LONGTEXT DEFAULT NULL, contact LONGTEXT DEFAULT NULL, referances LONGTEXT DEFAULT NULL, status VARCHAR(10) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE image CHANGE product_id product_id INT NOT NULL');
        $this->addSql('ALTER TABLE product CHANGE writer_id writer_id INT NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE setting');
        $this->addSql('ALTER TABLE image CHANGE product_id product_id INT DEFAULT 0');
        $this->addSql('ALTER TABLE product CHANGE writer_id writer_id INT DEFAULT 0');
    }
}
