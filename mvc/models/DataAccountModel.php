<?php
    include_once("mvc/http/StudentVinhUni.php");
    class DataAccountModel  extends DB{
        function updatePassword($passwordold,$password,$cookie){
            return editPassword(md5($passwordold),md5($password),$cookie);
        }
        function getAllData($msv,$tabel){
            $msv = mysqli_real_escape_string($this->conn,$msv);
            $tabel = mysqli_real_escape_string($this->conn,$tabel);
            $SQL = "SELECT * FROM `{$tabel}` WHERE `msv` = '{$msv}'";
            return mysqli_fetch_array(mysqli_query($this->conn,$SQL));
        }

        function updateData($msv,$tabel,$col,$value){
            $msv = mysqli_real_escape_string($this->conn,$msv);
            $tabel = mysqli_real_escape_string($this->conn,$tabel);
            $col = mysqli_real_escape_string($this->conn,$col);
            $value = mysqli_real_escape_string($this->conn,$value);
            $SQL = "UPDATE `{$tabel}` SET `$col` = '{$value}' WHERE `msv` = '{$msv}'";
            if(mysqli_query($this->conn,$SQL)) return true;
            return false;
        }


    }
?>