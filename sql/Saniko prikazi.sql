-- SET
--   @OLD_UNIQUE_CHECKS = @ @UNIQUE_CHECKS,
--   UNIQUE_CHECKS = 0;
-- SET
--   @OLD_FOREIGN_KEY_CHECKS = @ @FOREIGN_KEY_CHECKS,
--   FOREIGN_KEY_CHECKS = 0;
-- SET
--   @OLD_SQL_MODE = @ @SQL_MODE,
--   SQL_MODE = 'TRADITIONAL,ALLOW_INVALID_DATES';
  
  
  
  USE Saniko;




--   -- PRIKAZ  JOIN DIGITALE I rNALOGA
-- SELECT
--   `nalozi_2018`.`id`,
--   `id_Rnalog`,
--   date_FORMAT(`datum_naloga`, "%d.%m.%Y") as Datum,
--   `kupac`,
--   `naziv_posla`,
--   `kolicina`,
--   `jedinica_mere`,
--   `PAP_gram`,
--   `PAP_tekstura`,
--   `PAP_format`,
--   `br_klik`,
--   `br_tab`,
--   `PAP_A`,
--   `PAP_B`,
--   `jedin_tab`
-- FROM
--   `nalozi_2018`
--   JOIN `nalozi_digitab` on `nalozi_2018`.`id` = `nalozi_digitab`.`id_Rnalog`
--   JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`;




  -- PRIKAZ  JOIN ADAST I rNALOGA
SELECT
  nalozi_adast.id,

  `id_Rnalog`,
  date_FORMAT(`datum_naloga`, "%d.%m.%Y") as Datum,
  `kupac`,
  `naziv_posla`,
  `kolicina`,
  `jedinica_mere`,
  `PAP_gram`,
  `PAP_tekstura`,
  `br_ploca`,
  `PAP_A`,
  `PAP_B`,
  `PAP_nacin_stampe`,
  `br_otisaka`,
  `br_tab`,
  `br_kolora`,
  `PAP_format`,
  `jedin_tab`
FROM
  `nalozi_2018`
  INNER JOIN `nalozi_adast` on `nalozi_2018`.`id` = `nalozi_adast`.`id_Rnalog`
  INNER JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`;




--   -- PRIKAZ  JOIN kupci nalozi i fakture
-- SELECT
--   `nalozi_2018`.`id`,
--   date_FORMAT(`datum_naloga`, "%d.%m.%Y") as Datum,
--   `kupac`,
--   `naziv_posla`,
--   `kolicina`,
--   `jedinica_mere`,
--   sledeci_korak,
--   bruto_cena_SUM,
--   broj_fakture_cist
-- FROM
--   `nalozi_2018`
--   INNER JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
--   Left JOIN `fakture` on nalozi_2018.faktura_id = fakture.id
-- ORDER BY
--   id;





  -- PRIKAZ SVIH FAKTURA
SET
  @kurs = 125;




-- SELECT
--   id,
--   date_FORMAT(`datum_naloga`, "%d.%m.%Y") as Datum,
--   fakturise,
--   kupac,
--   naziv_posla,
--   kolicina,
--   jedinica_mere as KOM,
--   inter_cena_vrsta,
--   inter_cena,
--   inter_cena_valuta,
--   ekster_cena_vrsta,
--   ekster_cena,
--   ekster_cena_valuta,
--   bruto_cena_SUM as BRUTO,
--   neto_cena_SUM as NETO,  
--   br_fakture
-- FROM
--   nalozi_2018
--   INNER JOIN kupci on kupci.id_kupac = nalozi_2018.kupac_id
-- WHERE
--   kolicina <> 0
--   and id BETWEEN 201802001
--   AND 201802500 
--   --
-- GROUP BY
--   id 
--   --
-- ORDER BY
--   fakturise;




--   -- PRIKAZ ODREDJENE FAKTURE
-- SELECT
--   id,
--   date_FORMAT(`datum_naloga`, "%d.%m.%Y") as Datum,
--   fakturise,
--   kupac,
--   naziv_posla,
--   kolicina,
--   jedinica_mere as KOM,
--   inter_cena_vrsta,
--   inter_cena,
--   inter_cena_valuta,
--   ekster_cena_vrsta,
--   ekster_cena,
--   ekster_cena_valuta,
--   bruto_cena_SUM,
--   br_fakture
-- FROM
--   nalozi_2018
--   JOIN kupci on kupci.id_kupac = nalozi_2018.kupac_id
-- WHERE
--   fakturise = 'MPH'
--   and br_fakture = "0101-18"
-- -- GROUP BY
-- --   id 
--   -- LIMIT  20
--   ;





