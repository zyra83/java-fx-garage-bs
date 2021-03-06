DROP DATABASE IF EXISTS cars;
DROP DATABASE IF EXISTS CARS;
CREATE DATABASE CARS DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_unicode_ci;

USE CARS;

SET NAMES 'utf8';


-- -----------------------------------------------------
-- Table `CARS`.`MARQUE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CARS`.`MARQUE` (
  `id_marque` VARCHAR(36) COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `nom_marque` VARCHAR(45) COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  PRIMARY KEY (`id_marque`),
  UNIQUE INDEX `id_marque_UNIQUE` (`id_marque` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CARS`.`VOITURE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CARS`.`VOITURE` (
  `id_voiture` VARCHAR(36) COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `mec_voiture` DATE NOT NULL,
  `modele_voiture` VARCHAR(36) COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `puissance_voiture` INT(11) NOT NULL,
  `immat_voiture` VARCHAR(36) COLLATE 'utf8mb4_unicode_ci' NOT NULL,
  `id_marque_voiture` VARCHAR(36) COLLATE 'utf8mb4_unicode_ci' NULL DEFAULT NULL,
  PRIMARY KEY (`id_voiture`),
  INDEX `fk_marque_idx` (`id_marque_voiture` ASC),
  CONSTRAINT `fk_marque`
    FOREIGN KEY (`id_marque_voiture`)
    REFERENCES `CARS`.`MARQUE` (`id_marque`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;

INSERT INTO MARQUE VALUES
("b1335cce-13b2-11e7-93ae-92361f002671","Peugeot"),
("b13362c8-13b2-11e7-93ae-92361f002671","Porsche"),
("b1336692-13b2-11e7-93ae-92361f002671","Renault");

INSERT INTO VOITURE VALUES 
("7216f84e-8ad7-407f-af94-c2400f01656b", "2016-01-01", "Mégane", 1, "ST-010-080","b1336692-13b2-11e7-93ae-92361f002671"),
("b1ea83f0-eac4-4c13-9e3a-8e18bc800ce7", "2015-01-01", "Clio", 1, "ST-010-081","b1336692-13b2-11e7-93ae-92361f002671"),
("9e106b0c-3910-4581-bb7b-55f0d024fbbc", "2014-01-01", "106", 2, "ST-010-082","b1335cce-13b2-11e7-93ae-92361f002671"),
("59b59e7f-b41f-4aaa-99cb-cdba02a466a5", "2013-01-01", "Saxo", 3, "ST-010-083","b1336692-13b2-11e7-93ae-92361f002671"),
("f9080d96-c341-4a36-9582-55bd9a8964fa", "2012-01-01", "Cayenne", 4, "ST-010-084","b1336692-13b2-11e7-93ae-92361f002671"),
("5241f863-8e5b-4707-b48e-f21afb85182f", "2011-01-01", "Sandero", 4, "ST-010-085","b1335cce-13b2-11e7-93ae-92361f002671"),
("5241f863-8e5b-4707-b48e-f21afb8518f2", "2010-01-01", "Focus", 5, "ST-010-086","b1335cce-13b2-11e7-93ae-92361f002671");
