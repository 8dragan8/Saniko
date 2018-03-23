USE Saniko;




-- SELECT
--     `id_01_2018`,
--     `COL 1`,
--     `COL 2`,
--     `COL 3`,
--     `COL 4`,
--     `COL 5`
-- FROM
--     `201801`;




-- SELECT
--     kupac,
--     APR_naziv,
--     adresa_kupca,
--     grad,
--     drzava,
--     Right(trim(pib), 9) as PIB
-- From
--     Kupci
-- where
--     drzava like "%srbija%"
--     and pib is not null;
    
    
    
--     -- Extract PIB sa regex
-- SELECT
--     kupac,
--     APR_naziv,
--     adresa_kupca,
--     grad,
--     TRIM(REGEXP_SUBSTR(Kupci.grad, "\\D+$")) as `Samo grad`,
--     drzava,
--     pib as PIB,
--     REGEXP_SUBSTR(trim(pib), '\\D+\\K\\d{9}$') as reg
-- From
--     Kupci - -
-- where
--     drzava like "%srbija%"
--     and pib is not null;




-- SELECT
--     kupac,
--     - - adresa_kupca,
--     grad,
--     drzava,
--     - - id_grad,
--     TRIM(REGEXP_SUBSTR(Kupci.grad, "\\D+$")) as Grad,
--     ime_mesta,
--     REGEXP_SUBSTR(Kupci.grad, "\\d{5}") as `PO broj`,
--     postanski_broj
-- From
--     Kupci - -
--     Join gradovisrbije on REGEXP_SUBSTR(Kupci.grad, "\\d{5}") = gradovisrbije.postanski_broj
--     and REGEXP_SUBSTR(Kupci.grad, "\\w+") like REGEXP_REPLACE(gradovisrbije.ime_mesta, "\\w", "_") - -
--     Join gradovisrbije on REGEXP_SUBSTR(Kupci.grad, "\\d{5}") = gradovisrbije.postanski_broj - -
-- Where
--     TRIM(REGEXP_SUBSTR(Kupci.grad, "\\D+$")) like CONCAT(
--         "%",
--         REGEXP_REPLACE(gradovisrbije.ime_mesta, "\\w", "_"),
--         "%"
--     )
--     JOIN gradovisrbije ON CONCAT_WS(
--         "-",
--         REGEXP_SUBSTR(Kupci.grad, "\\d{5}"),
--         Kupci.grad
--     ) LIKE CONCAT_WS(
--         "-",
--         gradovisrbije.postanski_broj,
--         REGEXP_REPLACE(gradovisrbije.ime_mesta, "\\w", "_")
--     ) - -
-- where
--     Grad like ime_mesta - -
-- group by
--     kupac;




-- SELECT
--     `id`,
--     CONCAT(
--         REGEXP_REPLACE(`COL 2`, "^\\d{1,2}\.\\d{1,2}\.(\\d{4})$", "\\1"),
--         LPAD(
--             REGEXP_REPLACE(`COL 2`, "^\\d{1,2}\.(\\d{1,2})\.\\d{4}$", "\\1"),
--             2,
--             "0"
--         ),
--         LPAD(`COL 1`, 3, "0")
--     ) AS Sifra,
--     `COL 1`,
--     `COL 2`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             "^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$",
--             "\\3-\\2-\\1"
--         ),
--         "%Y-%m-%d"
--     ) as datum,
--     `COL 3`,
--     `COL 4`,
--     `COL 5`,
--     `COL 6`,
--     `COL 7`,
--     Format(
--         REGEXP_REPLACE(`COL 7`, "\.(\\d{3})\,(\\d{2})$", "\\1\.\\2"),
--         2
--     ) as tiraz,
--     `COL 8`
-- FROM
--     `201802`
-- where
--     id > 1;




-- SELECT
--     `id`,
--     `COL 1`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             "^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$",
--             "\\3-\\2-\\1"
--         ),
--         "%Y-%m-%d"
--     ) as datum,
--     `COL 3`,
--     `COL 4`,
--     `COL 5`
-- FROM
--     `201802`
-- union
-- SELECT
--     `id`,
--     `COL 1`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             "^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$",
--             "\\3-\\2-\\1"
--         ),
--         "%Y-%m-%d"
--     ) as datum,
--     `COL 3`,
--     `COL 4`,
--     `COL 5`
-- FROM
--     `2018_01`
-- ORDER BY
--     datum;




-- SELECT
--     `id`,
--     `COL 1`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             "^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$",
--             "\\3-\\2-\\1"
--         ),
--         "%Y-%m-%d"
--     ) as datum,
--     `COL 3`,
--     `COL 4`,
--     `COL 5`
-- FROM
--     `201802`
-- union
-- SELECT
--     `id`,
--     `COL 1`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             "^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$",
--             "\\3-\\2-\\1"
--         ),
--         "%Y-%m-%d"
--     ) as datum,
--     `COL 3`,
--     `COL 4`,
--     `COL 5`
-- FROM
--     `2018_01`
-- ORDER BY
--     datum;




-- SELECT
--     CONCAT(
--         REGEXP_REPLACE(`COL 2`, '^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1'),
--         LPAD(
--             REGEXP_REPLACE(`COL 2`, '^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1'),
--             2,
--             '0'
--         ),
--         LPAD(`COL 1`, 3, '0')
--     ) AS SIFRA,
--     `id`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             '^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$',
--             '\\3-\\2-\\1'
--         ),
--         '%Y-%m-%d'
--     ) AS DATUM,
--     `COL 3`,
--     `COL 4`,
--     `COL 6`,
--     `COL 5`,
--     REPLACE(REPLACE(`COL 7`, '.', ''), ',', '.') as kolicina,
--     `COL 8`,
--     `COL 10`,
--     `COL 11`,
--     `COL 12`,
--     `COL 13`,
--     `COL 14`,
--     REGEXP_SUBSTR(`COL 15`, "^(\\d)") AS STR_A,
--     REGEXP_SUBSTR(`COL 15`, "^\\d\/\\K(\\d)") AS STR_B,
--     `COL 17`,
--     Left(`COL 18`, 30) as Napomena,
--     REPLACE(`COL 19`, ',', '.') as kom_tab
-- FROM
--     `201801`
-- WHERE
--     `COL 10` + `COL 11` + `COL 12` + `COL 13` + `COL 14` + `COL 15` + `COL 17` + `COL 18` + `COL 19` <> 0
-- union
-- SELECT
--     CONCAT(
--         REGEXP_REPLACE(`COL 2`, '^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1'),
--         LPAD(
--             REGEXP_REPLACE(`COL 2`, '^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1'),
--             2,
--             '0'
--         ),
--         LPAD(`COL 1`, 3, '0')
--     ) AS SIFRA,
--     `id`,
--     date_FORMAT(
--         REGEXP_REPLACE(
--             `COL 2`,
--             '^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$',
--             '\\3-\\2-\\1'
--         ),
--         '%Y-%m-%d'
--     ) AS DATUM,
--     `COL 3`,
--     `COL 4`,
--     `COL 6`,
--     `COL 5`,
--     REPLACE(REPLACE(`COL 7`, '.', ''), ',', '.') as kolicina,
--     `COL 8`,
--     `COL 10`,
--     `COL 11`,
--     `COL 12`,
--     `COL 13`,
--     `COL 14`,
--     REGEXP_SUBSTR(`COL 15`, "^(\\d)") AS STR_A,
--     REGEXP_SUBSTR(`COL 15`, "^\\d\/\\K(\\d)") AS STR_B,
--     `COL 17`,
--     Left(`COL 18`, 30) as Napomena,
--     REPLACE(`COL 19`, ',', '.') as kom_tab
-- FROM
--     `201802`
-- WHERE
--     `COL 10` + `COL 11` + `COL 12` + `COL 13` + `COL 14` + `COL 15` + `COL 17` + `COL 18` + `COL 19` <> 0;




-- SELECT
--     `nalozi_2018`.`id`,
--     `id_Rnalog`,
--     date_FORMAT(`datum_naloga`, "%m.%Y") as Datum,
--     `kupac_id`,
--     `naziv_posla`,
--     `kolicina`,
--     `jedinica_mere` `PAP_gram`,
--     `PAP_tekstura`,
--     `PAP_format`,
--     `br_klik`,
--     `br_tab`,
--     `PAP_A`,
--     `PAP_B`,
--     `jedin_tab`
-- FROM
--     `nalozi_2018`
--     JOIN `nalozi_digitab` on `nalozi_2018`.`id` = `nalozi_digitab`.`id_Rnalog`;





-- SELECT
--     `nalozi_2018`.`id` as Sifra,
--     date_FORMAT(`datum_naloga`, "%m.%Y") as Datum,
--     fakturise,
--     (
--         SELECT
--             kupac
--         From
--             kupci
--         where
--             kupci.id_kupac = nalozi_2018.kupac_id
--     ) as Kupac,
--     `naziv_posla`,
--     `kolicina`,
--     `jedinica_mere`,
--     br_fakture,
--     (
--         SELECT
--             fakture.broj_fakture_cist
--         from
--             fakture
--         where
--             fakture.id = nalozi_2018.faktura_id
--     ) as fakture,
--     (
--         SELECT
--             fakture.broj_fakture
--         from
--             fakture
--         where
--             fakture.id = nalozi_2018.faktura_id
--     ) as fakture2
-- FROM
--     `nalozi_2018`
-- where
--     nalozi_2018.br_fakture <> ''
--     and fakturise = 'MPH';








-- SELECT
--     id,
--     bruto_cena_SUM,
--     bruto_cena_SUM - neto_cena_SUM
-- from
--     nalozi_2018
-- where
--     id BETWEEN 201802001
--     AND 201802500;




-- INSERT INTO
--     kurs (vazi_od, kurs)
-- values
--     ('2016-01-01', 125),
--     ('2018-01-01', 120.5);







-- SELECT
--     kurs
-- from
--     kurs
-- order by
--     vazi_od desc
-- limit
--     1;



-- SELECT
--             nalozi_2018.id as id,
--             date_FORMAT(datum_naloga, '%d.%m.%Y') as datum,
--             fakturise,
--             kupac,
--             naziv_posla,
--             kolicina,
--             jedinica_mere,
--             inter_cena_vrsta,
--             inter_cena,
--             inter_cena_valuta,
--             ekster_cena_vrsta,
--             ekster_cena,
--             ekster_cena_valuta,
--             sum(bruto_cena_SUM),
--             br_fakture
--             FROM
--             nalozi_2018
--             JOIN kupci on kupci.id_kupac = nalozi_2018.kupac_id
--             JOIN fakture on fakture.id = nalozi_2018.faktura_id
--             WHERE
--             faktura_id = 55
--             ;




SELECT
                        nalozi_2018.id as Sifra,
                        date_FORMAT(datum_naloga, '%d.%m.%Y') as Datum,
                        kupac as Kupac,
                        naziv_posla as Posao,
                        concat(kolicina, jedinica_mere) as Tiraz,
                        sledeci_korak as Status,
                        Concat(format(bruto_cena_SUM, 2), ' ', ekster_cena_valuta) as Ukupno,
                        faktura_id as Faktura,
                        broj_fakture_cist as fakturaId
                    FROM
                        nalozi_2018
                    INNER JOIN kupci on nalozi_2018.kupac_id = kupci.id_kupac
                    LEFT JOIN fakture on nalozi_2018.faktura_id = fakture.id
                    where sledeci_korak = 'zavrseno'
                    ;