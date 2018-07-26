<?php 

class Dbh {

    private $servername;
    private $username;
    private $password;
    private $dbname;

    protected function connect() {
        $this->servername = "localhost";
        $this->username = "root";
        $this->password = "";
        $this->dbname = "rcs_web_server";

        $conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
        
        if($conn->connect_error){
            echo 'Error: Couldnot connect to database: ' . $conn->connect_error;
        }
        return $conn;
    }
}
