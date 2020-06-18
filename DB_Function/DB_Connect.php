<?php
    
	class DB_Connect {
		private $DB_con ;
		
		     public function connect() {
		     $servername = "localhost";
             $username = "root";
             $password = "";
             $dbname="game";
		     try {
                 $DB_con = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                 $DB_con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                 return $DB_con;
                }
                catch(PDOException $e)
                {
                //echo "Connection failed: " . $e->getMessage();
                return "Connection failed";
                }
            }
	   }
?>