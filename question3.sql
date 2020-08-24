-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Patient` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(255) NULL,
  `Sex` VARCHAR(45) NULL,
  `Age_diagnose` INT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Gene`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Gene` (
  `gene_ID` INT NOT NULL,
  `Name` INT NOT NULL,
  `location` INT NOT NULL,
  `description` VARCHAR(1000) NULL,
  PRIMARY KEY (`gene_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mutation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mutation` (
  `location` INT NOT NULL,
  `Gene_gene_ID` INT NOT NULL,
  PRIMARY KEY (`location`),
  INDEX `fk_Mutation_Gene1_idx` (`Gene_gene_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Mutation_Gene1`
    FOREIGN KEY (`Gene_gene_ID`)
    REFERENCES `mydb`.`Gene` (`gene_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
