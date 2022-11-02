<?php


class Trangchu extends Controller{
    private $accountModel;

    function __construct(){
      $this->accountModel = $this->model("DataAccountModel");
   }

    function product(){
      $this->view('trangchu',["userData" => $this->accountModel->getAllData($_SESSION["userInfo"]["msv"],"sinhvien")]);
    }

}
?>