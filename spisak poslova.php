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


 function iscitavanje_tabele ($conn) {

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
        ORDER BY
        id;";


        foreach ($conn->query($sql) as $row) {
            echo "<tr>
        <th><button type='button' class='btn btn-default btn-xs'> " . $row["id"] ."</button></th>
            <th>" . $row["datum"] ."</th>
            <th>" . $row["kupac"] ."</th>
            <th>" . $row["naziv_posla"] ."</th>
            <th class='text-right'>" . number_format($row["kolicina"], 2, '.', ' ') ."</th>
            <th>" . $row["jedinica_mere"] ."</th>
            <th>" . $row["sledeci_korak"] ."</th>
            <th class='text-right'>" . number_format(round($row["bruto_cena_SUM"],2), 2, '.', ' ') ."</th>
            <th>
            <form action='prikaz fakture.php' method='POST' role='form'>
            <div class='form-group'>
            <input type='hidden' class='form-control ' name='faktura' value='" . $row['faktura_id'] . "' >
            <input type='submit'  value='" .$row["broj_fakture_cist"] . "' class='btn btn-default btn-xs'></div></form></th>
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
                                    <th class="col-lg-1">Sifra</th>
                                    <th class="col-lg-1">Datum</th>
                                    <th class="col-lg-1">kupac</th>
                                    <th class="col-lg-4">naziv_posla</th>
                                    <th class="col-lg-1">kolicina</th>
                                    <th class="col-lg-1">jedinica_mere</th>
                                    <th class="col-lg-1">sledeci_korak</th>
                                    <th class="col-lg-1">bruto_cena_SUM</th>
                                    <th class="col-lg-2">broj_fakture_cist</th>
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