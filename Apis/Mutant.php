<?php
    class Mutants{
        private $conn;
        function __construct()
        {
            require_once './DB_Function/DB_Connect.php';
			$db = new Db_Connect();
            $this->conn = $db->connect();
            
        }
        public function Characters(){
        //    echo '1';
        // where name='Mutants',power,character
            $stmt = $this->conn->prepare("SELECT characters,power FROM games where name='Mutants'") or die("failed!");
            $stmt->execute();
            $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
            if($stmt->rowCount()>0){
                // return $rows;
                return $response=array("name"=> "Mutants","character"=>$rows);
            }else{
                return $response = array("status" => "failed","error" => "Booking Details not available" );
            }
        }
    }
?>