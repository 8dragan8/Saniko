
<?php
 include "php\connection.php";
 include "php\FUNKCgenerisanje tabele.php";

 $faktura=$_POST['faktura'];

if ($faktura==0) {
        echo "<span class='label label-warning'>Faktura nije pronadjena</span>";
    }
    else {
        # code...
        iscitavanje_naloga ($conn, $faktura, $DefinisaniPrikazi[0]);
    }



?>



    