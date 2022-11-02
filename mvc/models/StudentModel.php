<?php
include_once("mvc/http/StudentVinhUni.php");


class StudentModel  extends DB{

      // xử lý đăng nhập
      function login($username,$password){
         return loginST($username,$password);
      }

      // Thêm toàn bộ môn học vào csdl
      function updateMonHoc($studentInfo){
         $result = array("status"=>-1,"msg"=>"Có lỗi hệ thông!");
         $listMonHoc = getListCTH($studentInfo["sourceCTH"]);
         if(count($listMonHoc) < 1) {
            $result["msg"] = "Không lấy được danh sách chương trình học!";
            return $result;
         }

         foreach($listMonHoc as $value){
           
            if(!($this->insertSQLmonH($value))){
               $result["msg"] = "Không thêm được dữ liệu môn học : ".$value["tenhp"]."!";
               return $result;
            }
         }
         $result["status"] = 1;
         
         $result["msg"] = "Thêm thành công dữ liệu  ".count($listMonHoc)." môn học!";
         return $result;
         
      }
    
            
      // Thêm toàn bộ điểm vào csdl
      function updateDiem($studentInfo,$MSV){
         
         $result = array("status"=>-1,"msg"=>"Có lỗi hệ thông!");
         $listDiem = infoDiem($studentInfo["sourceDiem"]);
         if(count($listDiem) < 1) {
            $result["msg"] = "Không lấy được danh sách chương trình học!";
            return $result;
         }

         foreach($listDiem as $value){
         
            if(!($this->insertSQLdiem($value,$MSV))){
               $result["msg"] = "Không thêm được dữ liệu điểm môn học : ".$value["tenhp"]."!";
               return $result;
            }
         }
         $result["status"] = 1;
         
         $result["msg"] = "Thêm thành công dữ liệu  ".count($listDiem)." môn học!";
         return $result;
         
      }

      // thêm vao csdl diem tung mon
      function insertSQLdiem($Dmonhoc,$MSV){
         $SQL = "SELECT * FROM `diemsinhvien` WHERE `mahocphan` = '".$Dmonhoc["mahp"]."' AND `msv`='{$MSV}'";
         if(!mysqli_num_rows(mysqli_query($this->conn,$SQL))){
               $SQL = "INSERT INTO `diemsinhvien` (`msv`,`mahocphan`,`diem`,`diemchu`,`danhgia`) VALUES 
               ('".$MSV."','".$Dmonhoc["mahp"]."','".$Dmonhoc["tkhp"]."','".$Dmonhoc["diemchu"]."','".$Dmonhoc["danhgia"]."')";
         }else{
            $SQL = "UPDATE `diemsinhvien` SET `diem` = '".$Dmonhoc["diemchu"]."',`diemchu`='".$Dmonhoc["diemchu"]."',`danhgia`='".$Dmonhoc["danhgia"]."' WHERE `msv` = '".$MSV."' AND `mahocphan` = '".$Dmonhoc["mahp"]."' ";
         }
         if($this->conn->query($SQL)) return true;
         return false;
      }




      // thêm vào csdl từng môn
      function insertSQLmonH($monhoc){
         $SQL = "SELECT * FROM `monhoc` WHERE `mahocphan` = '".$monhoc["mahp"]."'";
         if(!mysqli_num_rows(mysqli_query($this->conn,$SQL))){
               $SQL = "INSERT INTO `monhoc` (`mahocphan`,`tenhocphan`,`sotinchi`,`sotietlythuyet`,`sotietthuchanh`,`thaoluan`,`hocky`) VALUES 
               ('".$monhoc["mahp"]."','".$monhoc["tenhp"]."','".$monhoc["sotc"]."','".$monhoc["solt"]."','".$monhoc["soth"]."','".$monhoc["sotl"]."','".$monhoc["hocky"]."')";
         }
         if($this->conn->query($SQL)) return true;
         return false;
      }


      // thêm thông tin sinh viên vào csdl
      function insertSQLlogin($userInfo){
         $SQL = "SELECT * FROM `sinhvien` WHERE `msv` = '".$userInfo["msv"]."'";
         if(mysqli_num_rows(mysqli_query($this->conn,$SQL))){
               $SQL = "UPDATE `sinhvien` SET `trangthai` = '".$userInfo["trangthai"]."' WHERE `msv` = '".$userInfo["msv"]."'";
         }else{
               $SQL = "INSERT INTO `sinhvien` (`msv`,`hoten`,`nganh`,`khoa`,`lop`,`trangthai`) VALUES 
               ('".$userInfo["msv"]."','".$userInfo["hoten"]."','".$userInfo["nganh"]."','".$userInfo["khoa"]."','".$userInfo["lop"]."','".$userInfo["trangthai"]."')";
         }
         if($this->conn->query($SQL)) return true;
         return false;
      }
}


?>
