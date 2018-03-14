
<?php
 include "php\connection.php";
 include "php\FUNKCgenerisanje tabele.php";

 $faktura=$_POST['faktura'];



 iscitavanje_naloga ($conn, $faktura, $DefinisaniPrikazi[0]);


?>



    