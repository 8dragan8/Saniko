<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Saniko baza</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css\main.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="js\main.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>

<?php
 include "connection.php";

 global $conn;

 $faktura_id=$_POST['faktura'];

 echo $faktura_id;

 print_r($_POST);


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


        foreach ($conn->query($sql) as $row) {
            echo "<tr>
        <th class='text-center'><button type='button' class='btn btn-default btn-xs'> " . $row["id"] ."</button></th>
            <th class='text-center'>" . $row["datum"] ."</th>
            <th class='text-center'>" . $row["kupac"] ."</th>
            <th>" . $row["naziv_posla"] ."</th>
            <th class='text-right'>" . number_format($row["kolicina"], 2, '.', ' ') . ' ' . $row["jedinica_mere"] ."</th>
            <th class='text-center'>" . $row["inter_cena_vrsta"] ."</th>
            <th class='text-right'>" . number_format($row["inter_cena"], 2, '.', ' ') ." " . $row["inter_cena_valuta"] ."</th>
            <th class='text-center'>" . $row["ekster_cena_vrsta"] ."</th>
            <th class='text-right'>" . number_format($row["ekster_cena"], 2, '.', ' ') . " " . $row["ekster_cena_valuta"] ."</th>
            <th class='text-right'>" . number_format(round($row["bruto_cena_SUM"],2), 2, '.', ' ') ."</th>
            </tr>";
        }

    }        

?>
    
    <div class="container-fluid">

        
        <div class="row">
            <div class="col-lg-12">
                <table class="table table-striped table-hover table-condensed">
                    <thead class="thead-dark">
                        <tr>
                            <th class='text-center'>Sifra</th>
                            <th class='text-center'>Datum</th>
                            <th class='text-center'>kupac</th>
                            <th class='text-center'>naziv_posla</th>
                            <th class='text-center'>kolicina</th>
                            <th class='text-center'>neto vrsta</th>
                            <th class='text-center'>neto cena</th>
                            <th class='text-center'>bruto vrsta</th>
                            <th class='text-center'>bruto cena</th>
                            <th class='text-center'>bruto cena sum</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php iscitavanje_fakture ($conn, $faktura_id); ?>
                    </tbody>
                </table>
                
            </div>
        </div>
                

    </div>


    
</body>
</html>