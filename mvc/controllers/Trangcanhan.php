<?php


class Trangcanhan extends Controller{
  private $accountModel;
  private $uploader;
  function __construct(){
    $this->accountModel = $this->model("DataAccountModel");
    $this->uploader = $this->lib("Uploader");
 }

  function product(){
    $this->view('trangcanhan',["userData" => $this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien"),"at_1"=>""]);
  }
  function xoaava(){
      $infoU = $this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien");
      $this->accountModel->updateData($_SESSION["userInfo"]["msv"],"sinhvien","avatar","public/assets/img/profile-img.jpg");
      header("location: capnhat");
  }

  function doimatkhau(){
    $infoU = $this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien");
    if(isset($_POST["btnEditPass"])){
    
        $passwordOld = $_POST["passwordOld"];
        $passwordNew = $_POST["passwordNew"];
        $passwordRenew = $_POST["passwordNewRe"];
        if(empty($passwordOld) || empty($passwordNew) || empty($passwordRenew)){
          $this->view('trangcanhan',["userData" =>$infoU,"error"=>"Nhập đầy đủ thông tin để thay đổi mật khẩu!","at_3"=>""]);
          exit;
        }else if($passwordNew != $passwordRenew){
          $this->view('trangcanhan',["userData" =>$infoU,"error"=>"Mật khẩu mới không trùng nhau!","at_3"=>""]);
          exit;
        }

        $upDatePass = $this->accountModel->updatePassword($passwordOld,$passwordNew,$_SESSION["userInfo"]["cookie"]);
        if($upDatePass["status"] == 1){
          $this->view('trangcanhan',["userData" =>$infoU,"success"=>$upDatePass["msg"],"at_3"=>""]);
          exit;
        }else{
          $this->view('trangcanhan',["userData" =>$infoU,"error"=>$upDatePass["msg"],"at_3"=>""]);
          exit;
        }
    }else{
       $this->view('trangcanhan',["userData" =>$infoU,"at_3"=>""]);
    }
  }
  function capnhat(){
    
    if(isset($_POST["btnSave"])){
        $infoU = $this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien");
        $phone = $_POST["phone"];
        $email = $_POST["email"];
        if(isset($phone) && ($phone != $infoU["sdt"])){
         
          if(strlen($phone) != 10) {
            $this->view('trangcanhan',["userData" =>$infoU,"error"=>"Số điện thoại không hợp lệ!","at_2"=>""]);
            exit;
          }

         if(!$this->accountModel->updateData($_SESSION["userInfo"]["msv"],"sinhvien","sdt",$phone)){
             $this->view('trangcanhan',["userData" =>$infoU,"error"=>"Cập nhật số điện thoại không thành công!","at_2"=>""]);
             exit;
         }
        }

        if(isset($email) && ($email != $infoU["email"])){
          if(!$this->accountModel->updateData($_SESSION["userInfo"]["msv"],"sinhvien","email",$email)){
            $this->view('trangcanhan',["userData" =>$infoU,"error"=>"Cập nhật email không thành công!","at_2"=>""]);
            exit;
          }
       }
      
       if(!empty($_FILES["upload"]["name"])){
     
          $uploadResult = $this->uploader->uploadFile($_FILES['upload'],$infoU["msv"]);
          if ($uploadResult["status"] != 1) {
             $this->view('trangcanhan',["userData" =>$this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien"),"error"=>$uploadResult["msg"] ,"at_2"=>""]);
              exit;
          }else{
            if(!$this->accountModel->updateData($_SESSION["userInfo"]["msv"],"sinhvien","avatar",$uploadResult["dir"])){
              $this->view('trangcanhan',["userData" =>$this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien"),"error"=>"Cập nhật ảnh thất bại!","at_2"=>""]);
              exit;
            }
          }
       }

       // Thành công
       $this->view('trangcanhan',["userData" =>$this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien"),"success"=>"Cập nhật thông tin thành công!","at_2"=>""]);
           
    }else{
       $this->view('trangcanhan',["userData" => $this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien"),"at_2"=>""]);
    }
  }

}
?>