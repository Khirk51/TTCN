<?php
include_once("mvc/http/StudentVinhUni.php");


class TaiKhoanModel  extends DB{
      function login($username,$password){
         return loginST($username,$password);
      }
      function insertSQLlogin($userInfo){
         $sql = "SELECT * FROM `sinhvien` WHERE `msv` = '".$userInfo["msv"]."'";
         if($this->conn->query($sql)){
            $sql = "INSERT INTO `"
         }else{
            return true;
         }
      }
}


?>
