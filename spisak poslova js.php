<?php
 include "php\connection.php";
 include "php\FUNKCgenerisanje fakture.php";
 include "php\FUNKCgenerisanje tabele.php";

 global $conn;
 
 
 function iscitavanje_tabele ($conn) {
     
     global $DefinisaniPrikazi;



    $sql="SELECT
            nalozi_2018.id,
            date_FORMAT(datum_naloga, '%d.%m.%Y') as datum,
            kupac,
            naziv_posla,
            kolicina,
            jedinica_mere,
            sledeci_korak,
            bruto_cena_SUM,
            faktura_id,
            broj_fakture_cist
            FROM
            nalozi_2018
            INNER JOIN kupci on nalozi_2018.kupac_id = kupci.id_kupac
            LEFT JOIN fakture on nalozi_2018.faktura_id = fakture.id
            ORDER BY id
            
            ;";
            
    // $i=1;

    foreach ($conn->query($sql) as $row) {
        // $i++;

        
        echo "<tr class='red-harmonika'>
                <th>
                <button type='button' class='btn btn-default btn-xs phpBrNaloga-dugme' value=" .$row["id"] . ">" .$row["id"] . "</button>
                </th>
                <th>" . $row["datum"] ."</th>
                <th>" . $row["kupac"] ."</th>
                <th>" . $row["naziv_posla"] ."</th>
                <th class='text-right text-nowrap'>" . number_format($row["kolicina"], 2, '.', ' ') ." " . $row["jedinica_mere"] ."</th>
                <th class='text-center'>" . $row["sledeci_korak"] ."</th>
                <th class='text-right text-nowrap'>" . number_format(round($row["bruto_cena_SUM"],2), 2, '.', ' ') ."</th>
                <th>
                <button type='button' class='btn btn-default btn-xs phpFaktura-dugme' value=" .$row["faktura_id"] . ">" .$row["broj_fakture_cist"] . "</button>
                </th>
            </tr>
            <tr class='collapse tamnija-bg'>
            <td colspan='8'>
                <div class='col-xs-12 col-sm-12 col-md-12 col-lg-10 col-lg-offset-1'>";                    
                        
            // iscitavanje_fakture ($conn, $row['faktura_id']);
                iscitavanje_naloga ($conn, $row["id"], $DefinisaniPrikazi[1]);
                iscitavanje_naloga ($conn, $row["id"], $DefinisaniPrikazi[2]);
                iscitavanje_naloga ($conn, $row["id"], $DefinisaniPrikazi[3]);


        echo "</div>
            </td>
        </tr>               
            ";
    }
}        

?>

<html>
    <body>
    
        <div class="container-fluid">

            
            <div class="row">


                <div class="col-lg-1"> 
                <?php include('index.php');?>
                </div>

            </div>


            <div class="row">
    
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-10 col-lg-offset-1">

                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <th>Šifra</th>
                                <th>Datum</th>
                                <th>Kupac</th>
                                <th>Posao</th>
                                <th class='text-right'>Tiraž</th>
                                <th class='text-center'>Status</th>
                                <th>Ukupna cena</th>
                                <th>Faktura</th>
                            </tr>
                        </thead>


                        <tbody>
                            <?php iscitavanje_tabele ($conn); ?>
                        </tbody>


                    </table>


                </div>
            </div>

        </div>
    
    </body>
</html>