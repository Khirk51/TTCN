<?php


class Taikhoan extends Controller{
    public $taikhoanModel;
    public $noti;
    function __construct(){
        $this->taikhoanModel = $this->model("TaiKhoanModel");
    }

    //show mian
    function product(){
        $this->view("dangnhap",[]);
    }

    
    //login
    function dangnhap(){
        $noti = false;
        if(isset($_POST['btnLogin'])){
            $username = $_POST["usernameTxt"];
            $password = $_POST["passwordTxt"];
            if(empty($username) || empty($password)){
                $this->view('dangnhap',["result"=>"Nhập đầy đủ thông tin để đăng nhập!"]);
            }else{
                $result = $this->taikhoanModel->dangnhap($username,md5($password));
                if($result["status"] != 1){
                    //$this->view('dangnhap',["result"=>$result["msg"]]);
                }
            }
           // $result = $this->taikhoanModel->info($username);
           
        }else{
            $this->view('dangnhap',[]);
        }
    }

    //dangxuat
    function dangxuat(){
        unset($_SESSION["id"]);
        session_destroy();
        $this->view('dangnhap',[]);
    }
}


function dataSend($msg,$email,$name,$username){
    $data  = ["result"=>$msg,
        "email"=>$email,
        "name"=>$name,
        "username"=>$username
    ];
    return $data;
}
?>