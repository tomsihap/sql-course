-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema armazon
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema armazon
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `armazon` DEFAULT CHARACTER SET utf8 ;
USE `armazon` ;

-- -----------------------------------------------------
-- Table `armazon`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `armazon`.`client` (
  `code` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NULL,
  `prenom` VARCHAR(45) NULL,
  `codeAdresse` INT NULL,
  `telephone` VARCHAR(12) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `armazon`.`categorie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `armazon`.`categorie` (
  `code` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `armazon`.`produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `armazon`.`produit` (
  `code` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `prix` DECIMAL NULL,
  `codeCategorie` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`code`),
  INDEX `fk_produit_categorie_idx` (`codeCategorie` ASC) VISIBLE,
  CONSTRAINT `fk_produit_categorie`
    FOREIGN KEY (`codeCategorie`)
    REFERENCES `mydb`.`categorie` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `armazon`.`stock`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `armazon`.`stock` (
  `id` INT NOT NULL,
  `date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `unites` INT NULL,
  `codeProduit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_stock_produit1_idx` (`codeProduit` ASC) VISIBLE,
  CONSTRAINT `fk_stock_produit1`
    FOREIGN KEY (`codeProduit`)
    REFERENCES `mydb`.`produit` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `armazon`.`commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `armazon`.`commande` (
  `code` VARCHAR(45) NOT NULL,
  `date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `quantite` INT NULL,
  `codeClient` VARCHAR(45) NOT NULL,
  `codeProduit` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`code`),
  INDEX `fk_commande_client1_idx` (`codeClient` ASC) VISIBLE,
  INDEX `fk_commande_produit1_idx` (`codeProduit` ASC) VISIBLE,
  CONSTRAINT `fk_commande_client1`
    FOREIGN KEY (`codeClient`)
    REFERENCES `mydb`.`client` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commande_produit1`
    FOREIGN KEY (`codeProduit`)
    REFERENCES `mydb`.`produit` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
