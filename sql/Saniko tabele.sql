
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


SET @kurs=125;


USE Saniko;



-- DROP TABLE IF EXISTS `saniko`.`nalozi_2018` ;

-- CREATE TABLE IF NOT EXISTS `saniko`.`nalozi_2018` (
--   `id` INT(8) NOT NULL,
--   `id_stari` INT(5),
--   `datum_naloga` DATE NOT NULL,
--   `fakturise` VARCHAR(9) NOT NULL,
--   `kupac` VARCHAR(50) NOT NULL,
--   `kupac_id` INT(11) NOT NULL,
--   `naziv_akcije` VARCHAR(100),
--   `naziv_posla` VARCHAR(100) NOT NULL,
--   `kolicina` DECIMAL(13,4) DEFAULT 1,
--   `jedinica_mere` ENUM('kom', 'm2', 'tab', 'klik', 'set', 'blok'),
--   `katalosko_ime` VARCHAR(100),
--   `sledeci_korak` VARCHAR(100),
--   `inter_cena_vrsta` ENUM('ukupno', 'kom'),
--   `inter_cena` DECIMAL(13,4),
--   `inter_cena_valuta` ENUM('din', 'eur'),
--   `ekster_cena_vrsta` ENUM('ukupno', 'kom'),
--   `ekster_cena` DECIMAL(13,4),
--   `ekster_cena_valuta` ENUM('din', 'eur'),
--   `rabat` INT(2) DEFAULT NULL,
--   `br_fakture` VARCHAR(10),
-- --   `kurs` DECIMAL (13,4),
-- -- ukupna_cena DECIMAL(13,4) AS  (ekster_cena*POW(kolicina, ekster_cena_vrsta-1)*POW(@kurs, ekster_cena_valuta-1)*(1-rabat/100)),
--   PRIMARY KEY (`id`)
--   )
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;




-- DROP TABLE IF EXISTS `saniko`.`nalozi_DIGItab` ;

-- CREATE TABLE IF NOT EXISTS `saniko`.`nalozi_DIGItab` (
--   `id` INT AUTO_INCREMENT,
--   `id_Rnalog` INT(8) NOT NULL,
--   `PAP_gram` VARCHAR(10),
--   `PAP_tekstura` ENUM('mat', 'sjaj', 'ofset'),
--   `PAP_format` VARCHAR(20),
--   `br_klik` int(4),
--   `br_tab` int(4),
--   `PAP_A` INT(1),
--   `PAP_B` INT(1),
--   `jedin_tab` DECIMAL(13,4),
--   `opis_dorade` VARCHAR(100),
--   `napomena` VARCHAR(100),
--   PRIMARY KEY (`id`),
--   CONSTRAINT `id_Rnalog_sa_DIGITAB`
--     FOREIGN KEY (`id_Rnalog`)
--     REFERENCES `saniko`.`nalozi_2018` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
--   )
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;


-- DROP TABLE IF EXISTS `saniko`.`nalozi_ADAST` ;

-- CREATE TABLE IF NOT EXISTS `saniko`.`nalozi_ADAST` (
--   `id` INT AUTO_INCREMENT,
--   `id_Rnalog` INT(8)  NOT NULL,
--   `PAP_gram` VARCHAR(10),
--   `PAP_tekstura` ENUM('mat', 'sjaj', 'ofset'),
--   `PAP_format` VARCHAR(20),
--   `br_otisaka` int(4),
--   `br_tab` int(4),
--   `br_kolora` int(4),
--   `br_ploca` int(4),
--   `PAP_A` INT(1),
--   `PAP_B` INT(1),
--   `PAP_nacin_stampe` VARCHAR(100),
--   `jedin_tab` DECIMAL(13,4),
--   `opis_dorade` VARCHAR(100),
--   `napomena` VARCHAR(100),
--   PRIMARY KEY (`id`),
--   CONSTRAINT `id_Rnalog_sa_ADAST`
--     FOREIGN KEY (`id_Rnalog`)
--     REFERENCES `saniko`.`nalozi_2018` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
--   )
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;



-- DROP TABLE IF EXISTS `saniko`.`nalozi_VF` ;

-- CREATE TABLE IF NOT EXISTS `saniko`.`nalozi_VF` (
--   `id` INT AUTO_INCREMENT PRIMARY KEY,
--   `id_Rnalog` INT(8)  NOT NULL,
--   `materijal` VARCHAR(50),
--   `PAP_tekstura` ENUM('mat', 'sjaj', 'ofset'),
--   `debljina` INT(1),
--   `element_kom` int(4),
--   `element_x_mm` int(6),
--   `element_y_mm` int(6),
--   `element_kom_m2` DECIMAL(13,4),
--   `element_ukup_m2` DECIMAL(13,4),
--   `opis_dorade` VARCHAR(100),
--   `napomena` VARCHAR(100),
--   CONSTRAINT `id_Rnalog_sa_VF`
--     FOREIGN KEY (`id_Rnalog`)
--     REFERENCES `saniko`.`nalozi_2018` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
--   )
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;



-- DROP TABLE IF EXISTS `saniko`.`kurs` ;

-- CREATE TABLE IF NOT EXISTS `saniko`.`kurs` (
--   `id` INT AUTO_INCREMENT PRIMARY KEY,
--   `vazi_od` DATE  NOT NULL,
--   `kurs` DECIMAL (13,4)  
--   )
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;



-- DROP TABLE IF EXISTS saniko.fakture;

-- CREATE TABLE IF NOT EXISTS `saniko`.`fakture` (
--     `id` INT AUTO_INCREMENT PRIMARY KEY,
--     broj_fakture varchar (9) not null UNIQUE,
--     broj_fakture_cist varchar (7) AS (LEFT(broj_fakture, 7)) PERSISTENT,
--     `vazi_od` DATE NOT NULL,
--     `kurs` DECIMAL (13,4) DEFAULT 125.0000,
--     status ENUM ('potpisana', 'placena', 'proknjizena', 'storno')
--     -- `id_Rnalog` INT(8)  NOT NULL,
--     -- CONSTRAINT `id_Rnalog_sa_fakturom`
--     -- FOREIGN KEY (`id_Rnalog`)
--     -- REFERENCES `saniko`.`nalozi_2018` (`id`)
--     -- ON DELETE NO ACTION
--     -- ON UPDATE NO ACTION

--   )
-- ENGINE = InnoDB
-- DEFAULT CHARACTER SET = utf8;









-- UPDATE nalozi_2018
-- SET nalozi_2018.kupac_id = (SELECT kupci.id_kupac FROM kupci
-- WHERE kupci.kupac = nalozi_2018.kupac)
-- -- Join nalozi_2018 on kupci.kupac = nalozi_2018.kupac
-- -- WHERE id_kupac IS NULL
-- ;

-- ALTER TABLE nalozi_2018
-- ADD CONSTRAINT Veza_kupac_posao
-- FOREIGN KEY (kupac_id) REFERENCES kupci(id_kupac);
-- ALTER TABLE nalozi_2018
-- DROP COLUMN kupac
-- ;


-- ALTER TABLE nalozi_2018 ADD faktura_id INT;
-- ALTER TABLE nalozi_2018 ADD CONSTRAINT fk_faktura_id FOREIGN KEY (faktura_id) REFERENCES fakture(id);


-- ALTER TABLE nalozi_2018 DROP bruto_cena_SUM;
-- ALTER TABLE nalozi_2018 DROP neto_cena_SUM;
ALTER TABLE nalozi_2018 ADD bruto_cena_SUM DECIMAL (13,4) as (IF (kolicina<>0, ROUND(ekster_cena*POW(kolicina, ekster_cena_vrsta-1)*(1-rabat/100)*POW((120.5), ekster_cena_valuta-1),2),0));
ALTER TABLE nalozi_2018 ADD neto_cena_SUM DECIMAL (13,4) as (IF (kolicina<>0, if(inter_cena, ROUND(inter_cena*POW(kolicina, inter_cena_vrsta-1)*(1-rabat/100)*POW((120.5), inter_cena_valuta-1),2),ROUND(ekster_cena*POW(kolicina, ekster_cena_vrsta-1)*(1-rabat/100)*POW((120.5), ekster_cena_valuta-1),2)),0));



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
