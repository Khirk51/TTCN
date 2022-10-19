<?php


class Dangky extends Controller{
    public $regModel;
    public $noti;
    // Must have SayHi()
    function __construct(){
        $this->regModel = $this->model("DangKyModel");
    }

    function product(){
        $this->view("dangky",[]);

    }
    //login
    function dangky(){
        $noti = false;
        if(isset($_POST['btnReg'])){
            $username = $_POST["usernameTxt"];
            $password = $_POST["passwordTxt"];
            $repassword = $_POST["repasswordTxt"];
            $email = $_POST["emailTxt"];
            $name = $_POST["nameTxt"];


            if(empty($username) || empty($password)|| empty($repassword)|| empty($email)|| empty($name)){
                $this->view('dangky',dataSend("Nhập đầy đủ thông tin để đăng ký!",$email,$name,$username));
            }else{


                //kiểm tra đầu vào
                $msg = "";
                if($password != $repassword){
                    $msg = "Hai mật khẩu không trùng nhau!";
                }elseif($this->regModel->existUsername($username)){
                    $msg = "Tài khoản đã tồn tại!";
                }elseif($this->regModel->existEmail($email)){
                    $msg = "Email đã tồn tại!";
                }

                // xử lý đầu ra
                if($msg != ""){
                    $this->view('dangky',dataSend($msg,$email,$name,$username));
                }else{

                }
            }
          
        }else{
            $this->view('dangky',[]); 
        }
    }
}
function dataSend($msg,$email,$name,$username){
    $data  = ["result"=>$msg,
        "email"=>$email,
        "namme"=>$name,
        "username"=>$username
    ];
    return $data;
}
?>