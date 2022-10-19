<?php
class DangNhapModel  extends DB{
   public function login($username){

    $username = $this->conn->real_escape_string($username);
       $SQL = "SELECT * FROM `USER` WHERE `Username` = '{$username}'";
       return mysqli_query($this->conn,$SQL); 
   }
}
?>