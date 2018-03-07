<!DOCTYPE html>
<html>
    <head>
    <?php include('Head.html');?>
    <title>Spisak poslova</title>
</head>
<body>

<?php
 include "connection.php";

 global $conn;


 function iscitavanje_tabele ($conn) {

 $sql="SELECT
        nalozi_2018.id as Sifra,
        date_FORMAT(datum_naloga, '%d.%m.%Y') as Datum,
        kupac as Kupac,
        naziv_posla as Posao,
        CONCAT(format(kolicina, 2), ' ', jedinica_mere) as Tiraz,
        sledeci_korak as Status,
        bruto_cena_SUM as Ukupno,
        faktura_id,
        broj_fakture_cist as Faktura
        FROM
        nalozi_2018
        INNER JOIN kupci on nalozi_2018.kupac_id = kupci.id_kupac
        LEFT JOIN fakture on nalozi_2018.faktura_id = fakture.id
        ORDER BY nalozi_2018.id desc;";
        
        $result = $conn->query($sql);
        $fields = array_keys($result->fetch(PDO::FETCH_ASSOC));
        var_dump( $fields);


        echo "<thead>
                <tr>";

        foreach (array_keys($result->fetch(PDO::FETCH_ASSOC)) as $column) {
            if ($column != 'faktura_id') {
                echo "<th>$column</th>";
            }
              
        }
        
        echo "</tr>
            </thead>
            <tbody>";

        foreach ($result as $row) {
            echo "<tr>
                    <th>
                        <form action='prikaz naloga.php' method='POST' role='form'>
                            <div class='form-group'>
                                <input type='hidden' class='form-control ' name='nalog' value='" . $row[1] . "' >
                                <input type='submit'  value='" .$row["Sifra"] . "' class='btn btn-default btn-xs'>
                            </div>
                        </form>
                    </th>
                    <th>" . $row["Datum"] ."</th>
                    <th>" . $row["Kupac"] ."</th>
                    <th>" . $row["Posao"] ."</th>
                    <th class='text-right'>" . $row["Tiraz"] . "</th>
                    <th class='text-center'>" . $row["Status"] ."</th>
                    <th class='text-right'>" . number_format(round($row["Ukupno"],2), 2, '.', ' ') ."</th>
                    <th>
                        <form action='prikaz fakture.php' method='POST' role='form'>
                            <div class='form-group'>
                                <input type='hidden' class='form-control ' name='faktura' value='" . $row['faktura_id'] . "' >
                                <input type='submit'  value='" .$row["Faktura"] . "' class='btn btn-default btn-xs'>
                            </div>
                        </form>
                    </th>
                </tr>";
        }

        echo "</tbody>";

    }        

?>
    
    <div class="container-fluid">

        
        <div class="row dynamic-color">


            <div class="col-lg-1"> 
               <?php include('index.php');?>
            </div>



            <div class="col-lg-10">
                
                        
                        <table class="table table-striped table-hover table-condensed">

                                <?php iscitavanje_tabele ($conn); ?>

                        </table>
                
            </div>
        </div>
                

    </div>


    
</body>
</html>