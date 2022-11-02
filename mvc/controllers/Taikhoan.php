<?php


class Taikhoan extends Controller{
    private $studentModel;
    private $noti;
    function __construct(){
        $this->studentModel = $this->model("StudentModel");
    }

    //show mian
    function product(){
        $this->view("dangnhap",[]);
    }

    
    // Đăng nhập
    function dangnhap(){
        $noti = false;
        if(isset($_POST['btnLogin'])){
            $username = $_POST["usernameTxt"];
            $password = $_POST["passwordTxt"];
            if(empty($username) || empty($password)){
                $this->view('dangnhap',["result"=>"Nhập đầy đủ thông tin để đăng nhập!"]);
            }else{
                $result = $this->studentModel->login($username,md5($password));
                if($result["status"] != 1){
                    $this->view('dangnhap',["result"=>$result["msg"]]);
                }else{
                    if($result["userInfo"]["trangthai"] != "ĐANG HỌC"){
                        $this->view('dangnhap',["result"=>"Sinh viên không ở trạng thái đang học!"]);
                        exit;
                    }
                    //update SQL
                    if(!($this->studentModel->insertSQLlogin($result["userInfo"]))){
                        $this->view('dangnhap',["result"=>"Không thêm được dữ liệu sinh viên!"]);
                        exit;
                    }

                    //CTH
                    $CTH = $this->studentModel->updateMonHoc($result["studentInfo"]);
                    if($CTH["status"] != 1){
                        $this->view('dangnhap',["result"=>$CTH["msg"]]);
                        exit;
                    }

                     //DIEM
                     $DIEM = $this->studentModel->updateDiem($result["studentInfo"],$result["userInfo"]["msv"]);
                     if($CTH["status"] != 1){
                         $this->view('dangnhap',["result"=>$DIEM["msg"]]);
                         exit;
                     }

                    //success

                    $_SESSION["userInfo"] = $result["userInfo"];
                    
                    header("location: Trangchu");
                }
            }
           // $result = $this->studentModel->info($username);
           
        }else{
            $this->view('dangnhap',[]);
        }
    }

    //dangxuat
    function dangxuat(){
        unset($_SESSION["userInfo"]);
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