
<?php
 include "connection.php";

 $DefinisaniPrikazi = array (
     array(
            "Ime"=> "Faktura",
            
            "sql"=>"SELECT
                -- nalozi_2018.id as id,
                -- date_FORMAT(datum_naloga, '%d.%m.%Y') as datum,
                -- fakturise AS FAKTURISE,
                -- kupac AS  Kupac,
                naziv_posla  AS Posao,
                CONCAT(format(kolicina, 2), ' ', jedinica_mere)  AS Tiraz,
                Concat(format(inter_cena, 2), ' ', inter_cena_valuta, if(inter_cena_vrsta = 'kom', '/kom', '' )) as `Inter cena`,
                Concat(format(ekster_cena, 2), ' ', ekster_cena_valuta, if(ekster_cena_vrsta = 'kom', '/kom', '' )) as `Ekster cena`,
                Concat(format(bruto_cena_SUM, 2), ' ', ekster_cena_valuta) as Ukupno,
                br_fakture as Faktura
            FROM
                nalozi_2018
            JOIN kupci on kupci.id_kupac = nalozi_2018.kupac_id
            JOIN fakture on fakture.id = nalozi_2018.faktura_id
            WHERE faktura_id = ",

            // asocirajuce klase hedera

            "klaseHed"=>array (
                "text-left", "text-right", "text-right", "text-right", "text-right", "text-right"
            ),

            // asocirajuce klase kolona

            "klaseRed"=>array (
                "text-left", "text-right text-nowrap", "text-right", "text-right text-nowrap", "text-right text-nowrap", "text-right"
                )
                
            
         ),

         
     array(
            "Ime"=> "Ofset",
            
            "sql"=>"SELECT
                CONCAT(`PAP_gram`, ' ', `PAP_tekstura`) as Papir,
                `br_ploca` as `#ploca`,
                Concat(`PAP_A`, '/', `PAP_B`, ' ',  `PAP_nacin_stampe`) as Stampa,
                `br_tab`  as `# tabaka`,
                `br_otisaka` as `# otisaka`,
                `br_kolora`  as `# kolora`,
                `PAP_format` as Format,
                `jedin_tab` as `Kom po tabaku`
            FROM
                `nalozi_2018`
            INNER JOIN `nalozi_adast` on `nalozi_2018`.`id` = `nalozi_adast`.`id_Rnalog`
            INNER JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
            WHERE `id_Rnalog`= ",

            // asocirajuce klase hedera

            "klaseHed"=>array (
                "text-center", "text-center", "text-center", "text-center", "text-center", "text-center", "text-center", "text-center"
            ),

            // asocirajuce klase kolona

            "klaseRed"=>array (
                "text-center", "text-center", "text-center", "text-center", "text-center", "text-center", "text-center", "text-center"
                )
                

        ),

         
     array(
            "Ime"=> "Tabacna digitala",
            
            "sql"=>"SELECT
                CONCAT(`PAP_gram`, ' ', `PAP_tekstura`) as Papir,
                Concat(`PAP_A`, '/', `PAP_B`) as Stampa,
                `br_tab`  as `# tabaka`,
                `br_klik` as `# otisaka`,
                `PAP_format` as Format,
                `jedin_tab` as `Kom po tabaku`
            FROM
                `nalozi_2018`
            JOIN `nalozi_digitab` on `nalozi_2018`.`id` = `nalozi_digitab`.`id_Rnalog`
            JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
            WHERE `id_Rnalog`= ",

            // asocirajuce klase hedera

            "klaseHed"=>array (
                "text-center", "text-center", "text-center", "text-center", "text-center", "text-center"
            ),

            // asocirajuce klase kolona

            "klaseRed"=>array (
                "text-center", "text-center", "text-center", "text-center", "text-center", "text-center"
                )
            

        ),

    
    array(
            "Ime"=> "Veliki format",
            
            "sql"=>"SELECT
                    CONCAT(`materijal`, ' ', `PAP_tekstura`) as Materijal,
                    element_kom as komada,
                    CONCAT(`element_x_mm`, 'x', `element_y_mm`, 'mm') as Dimenzija,
                    element_kom_m2 as m2,
                    element_ukup_m2 as `m2 ukupno`,
                    opis_dorade as Dorada,
                    napomena as Napomena
                FROM
                    `nalozi_2018`
                JOIN `nalozi_vf` on `nalozi_2018`.`id` = `nalozi_vf`.`id_Rnalog`
                JOIN `kupci` on `nalozi_2018`.`kupac_id` = `kupci`.`id_kupac`
                WHERE `id_Rnalog`= ",

            // asocirajuce klase hedera

            "klaseHed"=>array (
                "text-left", "text-center", "text-right", "text-right", "text-right", "text-center", "text-center"
            ),

            // asocirajuce klase kolona

            "klaseRed"=>array (
                "text-left", "text-center", "text-right text-nowrap", "text-right", "text-right", "text-right", "text-left"
                )
    

        )

);

function iscitavanje_naloga ($conn, $parametar, $prikaz) {
    // print_r ($prikaz);

    $prikaz['sql'].= $parametar . ";";

    $data = $conn->query($prikaz['sql']);
    $result = $data->fetchAll(PDO::FETCH_ASSOC);

    // var_dump($result);
    // echo "<br>";
    
    
    if (!$result){
        
        // echo "<span class='label label-warning'>Nalog nije popunjen</span>";
        echo "";
    }
    else
    {   
    
        $header=array_keys($result[0]);
        // print_r ($header ."<br>");
        // print_r (count($header)."<br>");
    
             echo " <h3>" . $prikaz['Ime'] . "</h3>
             <table class='table table-condensed'>
                    <thead>
                        <tr>";
                        for ($x = 0; $x < count($header); $x++) {
                           echo " <th class='" . $prikaz['klaseHed'][$x] . "'>$header[$x]</th>";
                        }
                           
             echo "           </tr> 
                    </thead>
                    <tbody>
                    ";


                    for ($row = 0; $row < count($result); $row++) {
                        echo "<tr>";
                        for ($col = 0; $col < count($result[0]); $col++) {
                            echo "<th class='" . $prikaz['klaseRed'][$col] . "'>" . $result[$row][$header[$col]] ."</th>";
                        }
                        echo "</tr>";

            }
            
            echo " </tr>
                </tbody>
            </table>
                ";}
}



?>



    