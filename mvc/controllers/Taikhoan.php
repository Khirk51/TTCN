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

    //regiter
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
                }elseif($this->taikhoanModel->existUsername($username)){
                    $msg = "Tài khoản đã tồn tại!";
                }elseif($this->taikhoanModel->existEmail($email)){
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

    //login
    function dangnhap(){
        $noti = false;
        if(isset($_POST['btnLogin'])){
            $username = $_POST["usernameTxt"];
            $password = $_POST["passwordTxt"];
            if(empty($username) || empty($password)){
                $this->view('dangnhap',["result"=>"Nhập đầy đủ thông tin để đăng nhập!"]);
            }
            $result = $this->taikhoanModel->login($username);
            if(mysqli_num_rows($result)){
                while($row = mysqli_fetch_array($result)){
                    $id = $row["id"];
                    $username_sql = $row["Username"];
                    $password_sql = $row["Password"];
                }
                if( md5($password) == $password_sql) {
                    $_SESSION["id"] = $id;
                    header("location: ".URLDEFAULT."/Trangchu");
                }else{
                    $this->view('dangnhap',["result"=>"Mật khẩu không chính xác!","username"=>$username]); 
                }
            }else{
                $this->view('dangnhap',["result"=>"Tài khoản không tồn tại!","username"=>$username]); 
            }
        }else{
            $this->view('dangnhap',[]); 
        }
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