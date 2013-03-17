SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`sds_tipo_materiales`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`sds_tipo_materiales` (
  `tml_codigo` INT NOT NULL ,
  `tml_nombre` VARCHAR(45) NOT NULL ,
  `tml_descripcion` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`tml_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sds_tipo_servicios_tso`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`sds_tipo_servicios_tso` (
  `tso_codigo` INT NOT NULL ,
  `opa_codigo` INT NULL ,
  `tso_nombre` VARCHAR(45) NOT NULL ,
  `tso_descrpcion` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`tso_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sif_centro_costos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`sif_centro_costos` (
  `ctr_ano_fiscal` VARCHAR(45) NOT NULL ,
  `ctr_id_centro` VARCHAR(45) NOT NULL ,
  `ctr_desc` VARCHAR(45) NULL ,
  `ctr_sub_codigo` VARCHAR(45) NOT NULL ,
  `ctr_ubicacion` VARCHAR(45) NULL ,
  `ctr_telefono1` VARCHAR(45) NULL ,
  `ctr_telefono2` VARCHAR(45) NULL ,
  `ctr_correo_elect` VARCHAR(45) NULL ,
  `ctr_creado_por` VARCHAR(45) NOT NULL ,
  `ctr_modificado_por` VARCHAR(45) NULL ,
  `ctr_fecha_update` DATE NOT NULL ,
  PRIMARY KEY (`ctr_ano_fiscal`, `ctr_id_centro`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sds_asignaciones_tarea_ata`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`sds_asignaciones_tarea_ata` (
  `svo_codigo` INT NOT NULL ,
  `mtl_codigo` INT NULL ,
  `ata_cantidad` INT NULL ,
  PRIMARY KEY (`svo_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sds_asig_material_aml`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`sds_asig_material_aml` (
  `fmo_codigo` INT NOT NULL ,
  `svo_codigo` INT NULL ,
  `mtl_codigo` INT NULL ,
  `aml_cantidadestimada` INT NULL ,
  `aml_cantidadusada` INT NULL ,
  PRIMARY KEY (`fmo_codigo`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`persona`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`persona` (
  `nacionalidad` VARCHAR(45) NOT NULL ,
  `cedula` VARCHAR(45) NOT NULL ,
  `sexo` VARCHAR(45) NULL ,
  `nombre` VARCHAR(45) NULL ,
  `apellido` VARCHAR(45) NULL ,
  PRIMARY KEY (`cedula`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`jefe`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`jefe` (
  `cargo` INT NULL ,
  `jef_ctr_ano_fiscal` VARCHAR(45) NULL ,
  `jef_ctr_id_centro` INT NULL ,
  `jef_fecha_fin` DATE NULL ,
  `jef_fecha_ini` DATE NULL ,
  `jef_infa_ctr_ano_fiscal` VARCHAR(45) NULL ,
  `jef_infa_ctr_id_centro` INT NULL ,
  `tipo` INT NULL ,
  `nac` VARCHAR(45) NULL ,
  `ced` VARCHAR(45) NULL )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
