SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Estatus_ETU`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Estatus_ETU` (
  `ETU_codigo` INT NOT NULL ,
  `ETU_nombre` VARCHAR(45) NOT NULL ,
  `ETU_descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`ETU_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pisos_PSO`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Pisos_PSO` (
  `PSO_codigo` INT NOT NULL ,
  `PSO_nombre` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`PSO_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Orden_Prioridad_OPA`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Orden_Prioridad_OPA` (
  `OPA_codigo` INT NOT NULL ,
  `OPA_nombre` VARCHAR(10) NOT NULL ,
  PRIMARY KEY (`OPA_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Edificios_EDO`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Edificios_EDO` (
  `EDO_codigo` INT NOT NULL ,
  `EDO_nombre` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`EDO_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Personas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Personas` (
  `Cedula` INT NOT NULL ,
  `Nacionalidad` VARCHAR(2) NOT NULL ,
  `Sexo` VARCHAR(2) NOT NULL ,
  `Nombre` VARCHAR(20) NOT NULL ,
  `Apellido` VARCHAR(20) NOT NULL ,
  PRIMARY KEY (`Cedula`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Adminis`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Adminis` (
  `cedula` INT NOT NULL ,
  `Nacionalidad` CHAR NOT NULL ,
  `INFA_CTR_ID_centro` INT NOT NULL ,
  `INFA_CTR_ANO_fiscal` INT NOT NULL ,
  `INFA_PERN_TIPN_codigo` INT NOT NULL ,
  PRIMARY KEY (`cedula`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Asig_personal`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Asig_personal` (
  `FMO_codigo` INT NOT NULL ,
  `SVO_codigo` INT NOT NULL ,
  `INFA_nacionalidad` CHAR NOT NULL ,
  `INFA_cedula` VARCHAR(45) NOT NULL ,
  `INFA_PERN_TIPN_codigo` INT NOT NULL ,
  `APL_personalsugerido` INT NOT NULL ,
  `APL_personalusado` INT NOT NULL ,
  PRIMARY KEY (`FMO_codigo`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
