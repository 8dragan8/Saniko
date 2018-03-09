
<?php
 include "connection.php";

 global $conn;

function iscitavanje_fakture ($conn, $faktura_id) {

    $sql="SELECT
            nalozi_2018.id as id,
            date_FORMAT(datum_naloga, '%d.%m.%Y') as datum,
            fakturise,
            kupac,
            naziv_posla,
            kolicina,
            jedinica_mere,
            inter_cena_vrsta,
            inter_cena,
            inter_cena_valuta,
            ekster_cena_vrsta,
            ekster_cena,
            ekster_cena_valuta,
            bruto_cena_SUM,
            br_fakture
            FROM
            nalozi_2018
            JOIN kupci on kupci.id_kupac = nalozi_2018.kupac_id
            JOIN fakture on fakture.id = nalozi_2018.faktura_id
            WHERE
            faktura_id = " . $faktura_id . "
            ;";


    if ($faktura_id==0){

        echo "<span class='label label-warning'>Faktura nije napisana</span>";
    }
    else

        {    echo "<table class='table table-striped table-hover table-condensed'>
                    <thead>
                        <tr>
                            <th class='text-center'>Sifra</th>
                            <th class='text-center'>Datum</th>
                            <th class='text-center'>kupac</th>
                            <th class='text-center'>Posao</th>
                            <th class='text-center'>kolicina</th>
                            <th class='text-center'>neto vrsta</th>
                            <th class='text-right'>neto cena</th>
                            <th class='text-center'>bruto vrsta</th>
                            <th class='text-right'>bruto cena</th>
                            <th class='text-right'>bruto cena sum</th>
                        </tr>
                    </thead>
                    <tbody>";


            foreach ($conn->query($sql) as $row) {
                echo "<tr>
                            <th>
                                <form action='prikaz naloga.php' method='POST' role='form'>
                                    <div class='form-group'>
                                        <input type='hidden' class='form-control ' name='nalog' value='" . $row['id'] . "' >
                                        <input type='submit'  value='" .$row["id"] . "' class='btn btn-default btn-xs'>
                                    </div>
                                </form>
                            </th>
                            <th class='text-center'>" . $row["datum"] ."</th>
                            <th class='text-center'>" . $row["kupac"] ."</th>
                            <th>" . $row["naziv_posla"] ."</th>
                            <th class='text-right text-nowrap'>" . number_format($row["kolicina"], 2, '.', ' ') . ' ' . $row["jedinica_mere"] ."</th>
                            <th class='text-center'>" . $row["inter_cena_vrsta"] ."</th>
                            <th class='text-right text-nowrap'>" . number_format($row["inter_cena"], 2, '.', ' ') ." " . $row["inter_cena_valuta"] ."</th>
                            <th class='text-center'>" . $row["ekster_cena_vrsta"] ."</th>
                            <th class='text-right text-nowrap'>" . number_format($row["ekster_cena"], 2, '.', ' ') . " " . $row["ekster_cena_valuta"] ."</th>
                            <th class='text-right text-nowrap'>" . number_format(round($row["bruto_cena_SUM"],2), 2, '.', ' ') ." din</th>
                        </tr>";
            }
            
            echo "<tr>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th></th>
                    <th class='text-right'>Ukupno:</th>
                    <th class='text-right'>";
            
            $sql2="SELECT sum(bruto_cena_SUM) as suma FROM nalozi_2018 where faktura_id = " . $faktura_id . ";";


            foreach ($conn->query($sql2) as $row) {
                echo number_format(round($row["suma"],2), 2, '.', ' ');
            }

            echo " din</th>
                    </tr>
                </tbody>
            </table>
                ";}
}

?>



    