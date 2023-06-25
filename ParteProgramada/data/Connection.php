<?php

        $host='localhost';
        $dbname='BD_PROYECTO';
        $username='sa';
        $pasword ='12345678';
        $puerto=55458;
            try{
                $conn = new PDO ("sqlsrv:Server=$host,$puerto;Database=$dbname",$username,$pasword);
                echo "Se conectó correctamen a la base de datos";
            }
            catch(PDOException $exp){
                echo ("No se logró conectar correctamente con la base de datos: $dbname, error: $exp");
            }
    
            return $conn;
    

?>
