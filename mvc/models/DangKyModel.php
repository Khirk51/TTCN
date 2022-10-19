<?php
class DangKyModel  extends DB{
   public function existUsername($username){
       $username = $this->conn->real_escape_string($username);
       $SQL = "SELECT * FROM `USER` WHERE `Username` = '{$username}'";
       if(mysqli_num_rows(mysqli_query($this->conn,$SQL))) return true;
       return false;
   }


   public function existEmail($email){
        $username = $this->conn->real_escape_string($email);
        $SQL = "SELECT * FROM `USER` WHERE `Email` = '{$email}'";
        if(mysqli_num_rows(mysqli_query($this->conn,$SQL))) return true;
        return false;
    }
}
?>