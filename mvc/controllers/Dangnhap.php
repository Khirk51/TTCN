<?php


class Dangnhap extends Controller{
    public $loginModel;
    public $noti;
    // Must have SayHi()
    function __construct(){
        $this->loginModel = $this->model("DangNhapModel");
    }

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
            }
            $result = $this->loginModel->login($username);
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


    //logout
    function dangxuat(){
        unset($_SESSION["id"]);
        session_destroy();
        $this->view('dangnhap',[]);
    }
}
?>