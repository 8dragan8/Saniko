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
--   date_FORMAT(`datum_naloga`, '%d.%m.%Y') as Datum,
--   `kupac`,
--   `naziv_posla`,
--   `kolicina`,
--   `jedinica_mere`,
--   CONCAT(`PAP_gram`, ' ', `PAP_tekstura`) as Papir,
--   Concat(`PAP_A`, '/', `PAP_B`) as Stampa,
--   `br_tab`  as `# tabaka`,
--   `br_klik` as `# otisaka`,
--   `PAP_format` as Format,
--   `jedin_tab` as `Kom po tabaku`

-- FROM
--   `nalozi_2018`
--   JOIN `nalozi_digitab` on `nalozi_2018`.`id` = `nalozi_digitab`.`id_Rnalog`
--   JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
--   WHERE `id_Rnalog`= 201712520
--   ;




  -- PRIKAZ  JOIN VF I rNALOGA
SELECT
  `id_Rnalog`,
  date_FORMAT(`datum_naloga`, '%d.%m.%Y') as Datum,
  `kupac`,
  `naziv_posla`,
  `kolicina`,
  `jedinica_mere`,
  CONCAT(`materijal`, ' ', `PAP_tekstura`) as Materijal,
  element_kom as komada,
  CONCAT(`element_x_mm`, 'x', `element_y_mm`, 'mm') as Dimenzija,
  format(round(element_kom_m2), 2) as m2,
  format(round(element_ukup_m2), 2) as `m2 ukupno`,
  opis_dorade as Dorada,
  napomena as Napomena
FROM
  `nalozi_2018`
  JOIN `nalozi_vf` on `nalozi_2018`.`id` = `nalozi_vf`.`id_Rnalog`
  JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
  -- WHERE `id_Rnalog`= 201712520
  ;




--   -- PRIKAZ  JOIN ADAST I rNALOGA
-- SELECT
--   nalozi_adast.id as ID,
--   `id_Rnalog` as Sifra,
--   date_FORMAT(`datum_naloga`, '%d.%m.%Y') as Datum,
--   `kupac`,
--   `naziv_posla`,
--   `kolicina`,
--   `jedinica_mere`,
--   CONCAT(`PAP_gram`, ' ', `PAP_tekstura`) as Papir,
--   `br_ploca` as `#ploca`,
--   Concat(`PAP_A`, '/', `PAP_B`, ' ',  `PAP_nacin_stampe`) as Stampa,
--   `br_tab`  as `# tabaka`,
--   `br_otisaka` as `# otisaka`,
--   `br_kolora`  as `# kolora`,
--   `PAP_format` as Format,
--   `jedin_tab` as `Kom po tabaku`
-- FROM
--   `nalozi_2018`
--   INNER JOIN `nalozi_adast` on `nalozi_2018`.`id` = `nalozi_adast`.`id_Rnalog`
--   INNER JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
--   WHERE `id_Rnalog`= 201801001
--   ;




--   -- PRIKAZ  JOIN kupci nalozi i fakture
-- SELECT
--   `nalozi_2018`.`id`,
--   date_FORMAT(`datum_naloga`, '%d.%m.%Y') as Datum,
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
--   date_FORMAT(`datum_naloga`, '%d.%m.%Y') as Datum,
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
--   date_FORMAT(`datum_naloga`, '%d.%m.%Y') as Datum,
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
--   and br_fakture = '0101-18'
-- -- GROUP BY
-- --   id 
--   -- LIMIT  20
--   ;





-- SELECT
--  nalozi_2018.id as id,
--  date_FORMAT(datum_naloga, '%d.%m.%Y') as datum,
--  fakturise AS FAKTURISE,
--  kupac AS  Kupac,
--  naziv_posla  AS Posao,
--  CONCAT(format(kolicina, 2), ' ', jedinica_mere)  AS Tiraz,
--  Concat(format(inter_cena, 2), ' ', inter_cena_valuta, if(inter_cena_vrsta = 'kom', '/kom', '' )) as `Inter cena`,
--  Concat(format(ekster_cena, 2), ' ', ekster_cena_valuta, if(ekster_cena_vrsta = 'kom', '/kom', '' )) as `Ekster cena`,
--  format(bruto_cena_SUM, 2) as Ukupno,
--  br_fakture as Faktura
--  FROM
--  nalozi_2018
--  JOIN kupci on kupci.id_kupac = nalozi_2018.kupac_id
--  JOIN fakture on fakture.id = nalozi_2018.faktura_id;