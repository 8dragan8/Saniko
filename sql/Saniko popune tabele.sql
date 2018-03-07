
-- SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
-- SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
-- SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';





USE Saniko;










-- -- POPUNJAVANJE TABELE RADNi NALOZI





-- INSERT INTO `saniko`.`nalozi_2018` (
--                     `id`,
--                     `id_stari`,
--                     `datum_naloga`,
--                     `fakturise`,
--                     `kupac`,
--                     `naziv_akcije`,
--                     `naziv_posla`,
--                     `kolicina`,
--                     `jedinica_mere`,
--                     `katalosko_ime`,
--                     `sledeci_korak`,
--                     `inter_cena_vrsta`,
--                     `inter_cena`,
--                     `inter_cena_valuta`,
--                     `ekster_cena_vrsta`,
--                     `ekster_cena`,
--                     `ekster_cena_valuta`,
--                     `br_fakture`,
--                     `rabat`
--                     )
--                     SELECT
--                         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--                         `id`,
--                         date_FORMAT(REGEXP_REPLACE(`COL 2`, '^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$', '\\3-\\2-\\1'), '%Y-%m-%d'),
--                         `COL 3`,
--                         `COL 4`,
--                         `COL 6`,
--                         `COL 5`,
--                         REPLACE(REPLACE(`COL 7`, '.', ''), ',', '.'),
--                         `COL 8`,
--                         `COL 53`,
--                         `COL 60`,
--                         `COL 57`,
--                         REPLACE(REPLACE(`COL 58`, '.', ''), ',', '.'),
--                         `COL 59`,
--                         `COL 61`,
--                         REPLACE(REPLACE(`COL 62`, '.', ''), ',', '.'),
--                         `COL 63`,
--                         `COL 64`,
--                         `COL 54`
--                     FROM `201801` where id>1
--                 UNION
--                     SELECT
--                         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--                         `id`,
--                         date_FORMAT(REGEXP_REPLACE(`COL 2`, '^(\\d{1,2})\.(\\d{1,2})\.(\\d{4})$', '\\3-\\2-\\1'), '%Y-%m-%d'),
--                         `COL 3`,
--                         `COL 4`,
--                         `COL 6`,
--                         `COL 5`,
--                         REPLACE(REPLACE(`COL 7`, '.', ''), ',', '.'),
--                         `COL 8`,
--                         `COL 53`,
--                         `COL 60`,
--                         `COL 57`,
--                         REPLACE(REPLACE(`COL 58`, '.', ''), ',', '.'),
--                         `COL 59`,
--                         `COL 61`,
--                         REPLACE(REPLACE(`COL 62`, '.', ''), ',', '.'),
--                         `COL 63`,
--                         `COL 64`,
--                         `COL 54`
--                     FROM `201802` where id>1;








-- -- POPUNJAVANJE TABELE RADNI NALOG TABACNA DIGITALA





-- INSERT INTO nalozi_DIGItab (
--     `id_Rnalog`,
--     `PAP_gram`,
--     `PAP_tekstura`,
--     `PAP_format`,
--     `br_klik`,
--     `br_tab`,
--     `PAP_A`,
--     `PAP_B`,
--     `jedin_tab`,
--     `opis_dorade`,
--     `napomena`
-- )

-- SELECT
--     CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--     `COL 10`,
--     `COL 11`,
--     `COL 12`,
--     `COL 13`,
--     `COL 14`,
--     REGEXP_SUBSTR(`COL 15`, "^(\\d)"),
--     REGEXP_SUBSTR(`COL 15`, "^\\d\/\\K(\\d)"),
--     REPLACE(`COL 19`, ',', '.'),
--     `COL 17`,
--     `COL 18`
-- FROM `201801`
-- WHERE `COL 10` + `COL 11` + `COL 12` + `COL 13` + `COL 14` + `COL 15` + `COL 17` + `COL 18` + `COL 19` <> 0
-- union
-- SELECT
--     CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--     `COL 10`,
--     `COL 11`,
--     `COL 12`,
--     `COL 13`,
--     `COL 14`,
--     REGEXP_SUBSTR(`COL 15`, "^(\\d)"),
--     REGEXP_SUBSTR(`COL 15`, "^\\d\/\\K(\\d)"),
--     REPLACE(`COL 19`, ',', '.'),
--     `COL 17`,
--     `COL 18`
-- FROM `201802`
-- WHERE `COL 10` + `COL 11` + `COL 12` + `COL 13` + `COL 14` + `COL 15` + `COL 17` + `COL 18` + `COL 19` <> 0
-- ;






-- -- POPUNJAVANJE TABELE RADNI NALOG ADAST


-- INSERT INTO nalozi_ADAST (
--     `id_Rnalog`,
--     `PAP_gram`,
--     `PAP_tekstura`,
--     `br_ploca`,
--     `PAP_A`,
--     `PAP_B`,
--     `PAP_nacin_stampe`,
--     `br_otisaka`,
--     `br_tab`,
--     `br_kolora`,
--     `PAP_format`,
--     `opis_dorade`,
--     `napomena`,
--     `jedin_tab`
-- )

-- SELECT
--     CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--     `COL 23`,
--     `COL 24`,
--     `COL 25`,
--     REGEXP_SUBSTR(`COL 26`, "^(\\d)"),
--     REGEXP_SUBSTR(`COL 26`, "^\\d\/\\K(\\d)"),
--     REGEXP_REPLACE(`COL 26`, "^\\d\/\\\d", ""),
--     REPLACE(REPLACE(`COL 27`, ".", ""), ",", "."),
--     REPLACE(REPLACE(`COL 28`, ".", ""), ",", "."),
--     REPLACE(REPLACE(`COL 29`, ".", ""), ",", "."),
--     `COL 30`,
--     `COL 32`,
--     `COL 33`,
--     REPLACE(REPLACE(`COL 34`, ".", ""), ",", ".")
-- FROM `201801`
-- WHERE `COL 23` + `COL 24` + `COL 25` + `COL 26` + `COL 27` + `COL 28` + `COL 29` + `COL 30` + `COL 32` + `COL 33` <> 0
-- union
-- SELECT
--     CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--     `COL 23`,
--     `COL 24`,
--     `COL 25`,
--     REGEXP_SUBSTR(`COL 26`, "^(\\d)"),
--     REGEXP_SUBSTR(`COL 26`, "^\\d\/\\K(\\d)"),
--     REGEXP_REPLACE(`COL 26`, "^\\d\/\\\d", ""),
--     REPLACE(REPLACE(`COL 27`, ".", ""), ",", "."),
--     REPLACE(REPLACE(`COL 28`, ".", ""), ",", "."),
--     REPLACE(REPLACE(`COL 29`, ".", ""), ",", "."),
--     `COL 30`,
--     `COL 32`,
--     `COL 33`,
--     REPLACE(REPLACE(`COL 34`, ".", ""), ",", ".")
-- FROM `201802`
-- WHERE `COL 23` + `COL 24` + `COL 25` + `COL 26` + `COL 27` + `COL 28` + `COL 29` + `COL 30` + `COL 32` + `COL 33` <> 0
--  ;









-- -- POPUNJAVANJE TABELE RADNI NALOG VF






-- INSERT INTO nalozi_VF (
--     `id_Rnalog`,
--     `materijal`,
--     `PAP_tekstura`,
--     `debljina`,
--     `element_kom`,
--     `element_x_mm`,
--     `element_y_mm`,
--     `element_kom_m2`,
--     `element_ukup_m2`,
--     `opis_dorade`,
--     `napomena`
-- )
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 110`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 111`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 112`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 113`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 114`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 111` + `COL 112`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 120`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 121`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 122`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 123`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 124`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 121` + `COL 122`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 130`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 131`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 132`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 133`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 134`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 131` + `COL 132`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 140`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 141`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 142`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 143`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 144`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 141` + `COL 142`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 150`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 151`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 152`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 153`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 154`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 151` + `COL 152`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 160`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 161`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 162`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 163`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 164`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 161` + `COL 162`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 170`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 171`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 172`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 173`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 174`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 171` + `COL 172`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 180`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 181`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 182`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 183`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 184`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 181` + `COL 182`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 190`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 191`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 192`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 193`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 194`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 191` + `COL 192`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 200`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 201`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 202`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 203`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 204`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201801`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 201` + `COL 202`<> 0
--     UNION
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 110`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 111`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 112`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 113`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 114`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 111` + `COL 112`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 120`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 121`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 122`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 123`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 124`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 121` + `COL 122`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 130`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 131`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 132`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 133`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 134`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 131` + `COL 132`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 140`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 141`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 142`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 143`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 144`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 141` + `COL 142`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 150`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 151`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 152`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 153`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 154`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 151` + `COL 152`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 160`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 161`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 162`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 163`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 164`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 161` + `COL 162`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 170`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 171`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 172`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 173`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 174`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 171` + `COL 172`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 180`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 181`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 182`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 183`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 184`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 181` + `COL 182`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 190`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 191`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 192`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 193`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 194`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 191` + `COL 192`<> 0
--     union
--     SELECT
--         CONCAT(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.\\d{1,2}\.(\\d{4})$', '\\1' ), LPAD(REGEXP_REPLACE(`COL 2`,'^\\d{1,2}\.(\\d{1,2})\.\\d{4}$', '\\1' ), 2, '0'), LPAD(`COL 1`, 3, '0')),
--         `COL 43`,
--         REGEXP_REPLACE(`COL 44`, "\\d", ""),
--         REGEXP_SUBSTR(`COL 44`, "\\d"),
--         REPLACE(REPLACE(`COL 200`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 201`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 202`, ".", ""), ",", ".")*10,
--         REPLACE(REPLACE(`COL 203`, ".", ""), ",", "."),
--         REPLACE(REPLACE(`COL 204`, ".", ""), ",", "."),
--         `COL 46`,
--         `COL 47`
--     FROM `201802`
--     WHERE `COL 43` + `COL 44` + `COL 45` + `COL 46` + `COL 47` + `COL 201` + `COL 202`<> 0

--     ;




-- ALTER TABLE
--     nalozi_2018
-- ADD
--     faktura_id INT;




-- ALTER TABLE
--     nalozi_2018
-- ADD
--     CONSTRAINT fk_faktura_id FOREIGN KEY (faktura_id) REFERENCES fakture(id);




-- SELECT
--     CONSTRAINT_NAME,
--     TABLE_NAME,
--     CONSTRAINT_TYPE
-- FROM
--     information_schema.TABLE_CONSTRAINTS
-- WHERE
--     TABLE_NAME = 'nalozi_2018';




-- INSERT INTO
--     fakture (broj_fakture, vazi_od, kurs)
-- VALUES
--     ('0100-18-1', '2018-01-04', 122),
--     ('0101-18-1', '2018-01-04', 125),
--     ('0102-18-1', '2018-01-08', 125),
--     ('0103-18-1', '2018-01-11', 125),
--     ('0104-18-1', '2018-01-11', 125),
--     ('0105-18-1', '2018-01-17', 125),
--     ('0106-18-1', '2018-01-18', 125),
--     ('0107-18-1', '2018-01-22', 125),
--     ('0108-18-1', '2018-01-22', 125),
--     ('0109-18-1', '2018-01-22', 125),
--     ('0110-18-1', '2018-01-22', 125),
--     ('0111-18-1', '2018-01-22', 125),
--     ('0112-18-1', '2018-01-22', 125),
--     ('0114-18-1', '2018-01-23', 125),
--     ('0115-18-1', '2018-01-23', 125),
--     ('0116-18-1', '2018-01-23', 125),
--     ('0117-18-1', '2018-01-23', 125),
--     ('0118-18-1', '2018-01-24', 125),
--     ('0119-18-1', '2018-01-24', 125),
--     ('0120-18-1', '2018-01-24', 125),
--     ('0121-18-1', '2018-01-24', 125),
--     ('0122-18-1', '2018-01-24', 125),
--     ('0123-18-1', '2018-01-24', 125),
--     ('0124-18-1', '2018-01-24', 125),
--     ('0125-18-1', '2018-01-25', 125),
--     ('0126-18-1', '2018-01-26', 125),
--     ('0127-18-1', '2018-01-26', 125),
--     ('0128-18-1', '2018-01-26', 125),
--     ('0129-18-1', '2018-01-26', 125),
--     ('0130-18-1', '2018-01-26', 125),
--     ('0131-18-1', '2018-01-26', 125),
--     ('0132-18-1', '2018-01-26', 125),
--     ('0133-18-1', '2018-01-30', 125),
--     ('0134-18-1', '2018-01-30', 125),
--     ('0135-18-1', '2018-01-31', 125),
--     ('0201-18-1', '2018-02-01', 125),
--     ('0202-18-1', '2018-02-05', 125),
--     ('0203-18-1', '2018-02-05', 125),
--     ('0204-18-1', '2018-02-05', 125),
--     ('0205-18-1', '2018-02-06', 125),
--     ('0206-18-1', '2018-02-06', 125),
--     ('0207-18-1', '2018-02-12', 125),
--     ('0208-18-1', '2018-02-12', 125),
--     ('0209-18-1', '2018-02-13', 125),
--     ('0210-18-1', '2018-02-13', 125),
--     ('0211-18-1', '2018-02-16', 125),
--     ('0212-18-1', '2018-02-19', 125),
--     ('0214-18-1', '2018-02-19', 125),
--     ('0215-18-1', '2018-02-19', 125),
--     ('0216-18-1', '2018-02-19', 125),
--     ('0217-18-1', '2018-02-19', 125),
--     ('0218-18-1', '2018-02-19', 125),
--     ('0219-18-1', '2018-02-20', 125),
--     ('0220-18-1', '2018-02-21', 125);




-- INSERT INTO
--     fakture (broj_fakture, vazi_od, kurs)
-- VALUES
--     ('0101-18-2', '2018-01-04', 125),
--     ('0102-18-2', '2018-01-04', 125),
--     ('0103-18-2', '2017-01-10', 125),
--     ('0104-18-2', '2018-01-11', 125),
--     ('0105-18-2', '2018-01-15', 125),
--     ('0106-18-2', '2018-01-15', 125),
--     ('0107-18-2', '2018-01-22', 125),
--     ('0108-18-2', '2018-01-23', 125),
--     ('0109-18-2', '2018-01-23', 125),
--     ('0110-18-2', '2018-01-24', 125),
--     ('0111-18-2', '2018-01-24', 125),
--     ('0112-18-2', '2018-01-26', 125),
--     ('0114-18-2', '2018-01-26', 125),
--     ('0115-18-2', '2018-01-26', 125),
--     ('0116-18-2', '2018-01-26', 125),
--     ('0201-18-2', '2018-02-05', 125),
--     ('0202-18-2', '2018-02-06', 125),
--     ('0203-18-2', '2018-02-09', 125),
--     ('0204-18-2', '2018-02-09', 125),
--     ('0205-18-2', '2018-02-09', 125),
--     ('0206-18-2', '2018-02-16', 125),
--     ('0207-18-2', '2018-02-21', 125),
--     ('0208-18-2', '2018-02-21', 125);




Update
    nalozi_2018
set
    faktura_id = (
        SELECT
            fakture.id
        from
            fakture
        where
            fakture.broj_fakture_cist = nalozi_2018.br_fakture
            and fakturise <> 'MPH'
            and Right(fakture.broj_fakture, 1) = 1
    );




Update
    nalozi_2018
set
    faktura_id = (
        SELECT
            fakture.id
        from
            fakture
        where
            fakture.broj_fakture_cist = nalozi_2018.br_fakture
            and fakturise = 'MPH'
            and Right(fakture.broj_fakture, 1) = 2
    )
where
    faktura_id is null;