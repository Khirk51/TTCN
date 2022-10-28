<?php
include_once("mvc/http/Curl.php");


class TaiKhoanModel  extends DB{


   function dangNhap($username,$password){
      $result = array("status" => -1, "userInfo" => NULL, "msg"=>null);
      
      // URL
      $url = "http://student.vinhuni.edu.vn/CMCSoft.IU.Web.Info/Login.aspx?url=http%3a%2f%2fstudent.vinhuni.edu.vn%2fCMCSoft.IU.Web.Info%2fLogin.aspx%3furl%3dhttp%3a%2f%2fstudent.vinhuni.edu.vn%2fCMCSoft.IU.Web.Info%2fHome.aspx";
      // Lấy thông tin cần thiết từ index để đăng nhập
      $GetIndex = _HttpRequest(1,$url);
      $valueAll = valueInSource($GetIndex);
      

      if(empty($valueAll["__VIEWSTATE"]) || empty($valueAll["__VIEWSTATEGENERATOR"]) || empty($valueAll["__EVENTVALIDATION"])){
         $result["msg"] =  "Lỗi! không kết nối được tới student.vinhuni.edu.vn";
      }else{

         // Tạo request đăng nhập
         $dataLogin = "__EVENTTARGET=&__EVENTARGUMENT=&__LASTFOCUS=&__VIEWSTATE=".$valueAll["__VIEWSTATE"]."&__VIEWSTATEGENERATOR=".$valueAll["__VIEWSTATEGENERATOR"];
         $dataLogin .= "&__EVENTVALIDATION=".$valueAll["__EVENTVALIDATION"]."&PageHeader1%24drpNgonNgu=ABAF46BD671247C5B5B52885BB2F9C49&PageHeader1%24hidisNotify=0&PageHeader1%24hidValueNotify=.";
         $dataLogin .= "&txtUserName=".$username."&txtPassword=".$password."&btnSubmit=%C4%90%C4%83ng+nh%E1%BA%ADp&hidUserId=&hidUserFullName=&hidTrainingSystemId="; 
         echo $dataLogin;
         // Gửi request
         $loginPOST = _HttpRequest(2,$url,$dataLogin);
        // echo $loginPOST;
         $result["msg"] =  "Ô xờ kê lyly";
     
      }
      return $result;
   }
}


?>
