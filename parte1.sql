SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`localidades_lcd`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`localidades_lcd` (
  `lcd_codigo` INT NOT NULL ,
  `crt_ano_fiscal` DATE NOT NULL ,
  `ctr_id_centro` INT NOT NULL ,
  `pso_codigo` INT NOT NULL ,
  `edo_codigo` INT NOT NULL ,
  `lcd_nombre` VARCHAR(45) NOT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`formato_fmo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`formato_fmo` (
  `fmo_codigo` INT NOT NULL ,
  `jef_infa_pern_tipn_codigo` VARCHAR(45) NOT NULL ,
  `jef_infa_nacionalidad` VARCHAR(45) NOT NULL ,
  `jef_infa_cedula` VARCHAR(45) NOT NULL ,
  `jef_infa_ctr_id_centro` VARCHAR(45) NOT NULL ,
  `jef_infa_ctr_ano_fiscal` VARCHAR(45) NOT NULL ,
  `fmo_fecha` VARCHAR(45) NOT NULL ,
  `jef_fecha_ini` VARCHAR(45) NOT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`materiales_mtl`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`materiales_mtl` (
  `mtl_codigo` INT NOT NULL ,
  `tml_codigo` VARCHAR(45) NOT NULL ,
  `mtl_nombre` VARCHAR(45) NULL ,
  `mtl_cantidad` VARCHAR(45) NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table1`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`items_itm`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`items_itm` (
  `fmo_codigo` INT NOT NULL ,
  `svo_codigo` VARCHAR(45) NULL ,
  `lcd_codigo` VARCHAR(45) NULL ,
  `itm_observacion` VARCHAR(45) NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`items_historicos_his`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`items_historicos_his` (
  `fmo_codigo` INT NOT NULL ,
  `svo_codigo` VARCHAR(45) NULL ,
  `etu_codigo` VARCHAR(45) NULL ,
  `his_fecha_inicio` VARCHAR(45) NULL ,
  `his_observacion` VARCHAR(45) NULL ,
  `his_fecha_fin` VARCHAR(45) NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`servicios_svo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`servicios_svo` (
  `svo_codigo` INT NOT NULL ,
  `tso_codigo` VARCHAR(45) NULL ,
  `svo_nombre` VARCHAR(45) NULL ,
  `svo_descripcion` VARCHAR(45) NULL )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
