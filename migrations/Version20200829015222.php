<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200829015222 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE competences (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE entreprises (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE formations (id INT AUTO_INCREMENT NOT NULL, année VARCHAR(255) NOT NULL, titre VARCHAR(255) NOT NULL, etablissement VARCHAR(255) NOT NULL, complement VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE passions (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, description LONGTEXT DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE personne (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, lastname VARCHAR(255) NOT NULL, birthday DATE NOT NULL, email VARCHAR(255) NOT NULL, adresse VARCHAR(255) NOT NULL, code_postal VARCHAR(255) NOT NULL, ville VARCHAR(255) NOT NULL, titre VARCHAR(255) NOT NULL, phone VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE postes (id INT AUTO_INCREMENT NOT NULL, entreprises_id INT DEFAULT NULL, name VARCHAR(255) NOT NULL, datedebut DATE NOT NULL, datefin DATE NOT NULL, description LONGTEXT NOT NULL, INDEX IDX_5A763C64A70A18EC (entreprises_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE projets (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, description LONGTEXT NOT NULL, url VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE projets_competences (projets_id INT NOT NULL, competences_id INT NOT NULL, INDEX IDX_6DE310C1597A6CB7 (projets_id), INDEX IDX_6DE310C1A660B158 (competences_id), PRIMARY KEY(projets_id, competences_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE postes ADD CONSTRAINT FK_5A763C64A70A18EC FOREIGN KEY (entreprises_id) REFERENCES entreprises (id)');
        $this->addSql('ALTER TABLE projets_competences ADD CONSTRAINT FK_6DE310C1597A6CB7 FOREIGN KEY (projets_id) REFERENCES projets (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE projets_competences ADD CONSTRAINT FK_6DE310C1A660B158 FOREIGN KEY (competences_id) REFERENCES competences (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE projets_competences DROP FOREIGN KEY FK_6DE310C1A660B158');
        $this->addSql('ALTER TABLE postes DROP FOREIGN KEY FK_5A763C64A70A18EC');
        $this->addSql('ALTER TABLE projets_competences DROP FOREIGN KEY FK_6DE310C1597A6CB7');
        $this->addSql('DROP TABLE competences');
        $this->addSql('DROP TABLE entreprises');
        $this->addSql('DROP TABLE formations');
        $this->addSql('DROP TABLE passions');
        $this->addSql('DROP TABLE personne');
        $this->addSql('DROP TABLE postes');
        $this->addSql('DROP TABLE projets');
        $this->addSql('DROP TABLE projets_competences');
    }
}
