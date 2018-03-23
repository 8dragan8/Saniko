
<?php
 include "php\connection.php";
 include "php\FUNKCgenerisanje tabele.php";

 $nalog=$_POST['status'];

 $nalog = array('status' => 'zavrseno');

 var_dump($nalog);

 $DefinisaniPrikazi = 
    array(
           "Ime"=> "Faktura",
           
           "sql"=>"SELECT
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
                    where sledeci_korak =
                     ",

           // asocirajuce klase hedera

           "klaseHed"=>array (
               "text-left", "text-right", "text-right", "text-right", "text-right", "text-right", "text-right", "text-right", "text-right"
           ),

           // asocirajuce klase kolona

           "klaseRed"=>array (
               "text-left", "text-right text-nowrap", "text-right", "text-right text-nowrap", "text-right text-nowrap", "text-right", "text-right", "text-right", "text-right"
               )
               
           
        );


// if ($nalog['status']!=0) {
//     foreach ($nalog as $parametar) {

    // $parametar = $nalog['status'];

    // print('Parametar je ' . $parametar . "<br>");
    
    // $DefinisaniPrikazi['sql'].= "where status = '$parametar'";
    // $DefinisaniPrikazi['sql'].= " ORDER BY Sifra";
    //     }
    // }
    
    // $DefinisaniPrikazi['sql'].= ";";
    // print('SQL je ' .  $DefinisaniPrikazi['sql'] . "<br>");

// var_dump($DefinisaniPrikazi);


 


?>



<div class="container">
    
    <div class="row">
        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">

            <?php include('index.php');?>
            
        </div>
    </div>
    
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
            
            <?php iscitavanje_naloga ($conn, $nalog['status'], $DefinisaniPrikazi);?>
            
        </div>
    </div>
    
</div>
