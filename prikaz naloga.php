
<?php
 include "php\connection.php";
 include "php\FUNKCgenerisanje tabele.php";

 $nalog=$_POST['nalog'];



 iscitavanje_naloga ($conn, $nalog, $DefinisaniPrikazi[1]);
 iscitavanje_naloga ($conn, $nalog, $DefinisaniPrikazi[2]);
 iscitavanje_naloga ($conn, $nalog, $DefinisaniPrikazi[3]);


?>



    