<?php

    include_once "StudentFunc.php";

    // đăng nhập
    function loginST($username,$password){
        $result = array("status" => -1, "userInfo" => NULL,"msg"=>null);
        // URL
        $url = "http://student.vinhuni.edu.vn/CMCSoft.IU.Web.Info/Login.aspx?url=http://student.vinhuni.edu.vn/CMCSoft.IU.Web.info/StudentMark.aspx";


        // Lấy thông tin cần thiết từ index để đăng nhập
        $GetIndex = _HttpRequest(1,$url)["source"];
        $valueAll = valueInSource($GetIndex);
        if(empty($valueAll["__VIEWSTATE"]) || empty($valueAll["__VIEWSTATEGENERATOR"]) || empty($valueAll["__EVENTVALIDATION"])){
           $result["msg"] =  "Lỗi! không kết nối được tới student.vinhuni.edu.vn";
        }else{

            
           // Gửi request
           $loginPOST = _HttpRequest(2,$url,setDataPost($username,$password,$valueAll));
           $htmlLogin  = str_get_html($loginPOST["source"]);
           $error = $htmlLogin->find(".labelheader #lblErrorInfo",0);
           if(!empty($error)){
               $result["msg"] =  $error->plaintext;
               return $result;
           }
  
           // crawl thông tin học sinh
           $userInfo = infoSV($loginPOST["source"]);
           if(empty($userInfo["msv"])||empty($userInfo["hoten"])||empty($userInfo["lop"])||empty($userInfo["nganh"])||empty($userInfo["khoa"])||empty($userInfo["trangthai"])){
                 $result["msg"] = "Lỗi! Không lấy được thông tin sinh viên!";
                 return $result;
           }


           // return
           $CTH = getSource("http://student.vinhuni.edu.vn/CMCSoft.IU.Web.Info/CourseByFieldTree.aspx",$loginPOST["cookie"]); // Source web chương trình học
           $DIEM = $htmlLogin; // source web điểm
           $KQDKH =  getSource("http://student.vinhuni.edu.vn/CMCSoft.IU.Web.Info/Reports/Form/StudentTimeTable.aspx",$loginPOST["cookie"]); // source web kết quả đăng ký học
        
           if(!(strpos($CTH,"Chương trình đào tạo") !== true)) {
            $result["msg"] = "Lỗi! Không lấy được thông tin chương trình đào tạo!";
            return $result;
           }

           if(!(strpos($KQDKH,"Kết qủa đăng ký học") !== true)) {
                $result["msg"] = "Lỗi! Không lấy được thông tin kết quả đăng ký học!";
                return $result;
           }
           $userInfo["cookie"] = $loginPOST["cookie"];
           $studentInfo = array("sourceCTH"=>$CTH,"sourceDiem"=>$DIEM,"sourceKQDKH"=>$KQDKH);
           $result["userInfo"] = $userInfo;
           $result["studentInfo"] = $studentInfo;
           $result["status"] = 1;
           $result["msg"] = "Đăng nhập thành công: ";

           return $result;
        }
     }
     

     function editPassword($passwordOld,$password,$cookie){
      $result = array("status" => -1, "userInfo" => NULL,"msg"=>"Cookie đã hết hạn. vui lòng đăng nhập lại trước khi đổi mật khẩu!");
      // URL
      $url = "http://student.vinhuni.edu.vn/CMCSoft.IU.Web.info/ChangePassWordStudent.aspx";
      // Lấy thông tin cần thiết từ index để đăng nhập
      $GetIndex = _HttpRequest(1,$url,"",$cookie)["source"];
      $valueAll = valueInSource($GetIndex);
      if(empty($valueAll["__VIEWSTATE"]) || empty($valueAll["__VIEWSTATEGENERATOR"]) || empty($valueAll["__EVENTVALIDATION"])){
         $result["msg"] =  "Lỗi! không kết nối được tới student.vinhuni.edu.vn";
      }else{
         // Gửi request
         $editPass = _HttpRequest(2,$url,setDataEditPass($passwordOld,$password,$valueAll),$cookie);
         $htmlLogin  = str_get_html($editPass["source"]);
         $error = $htmlLogin->find("#tblBody #lblErrorInfo",0);
         if(!empty($error)){
             $result["msg"] =  $error->plaintext;
             if($error->plaintext == "Đã thực hiện đổi mật khẩu thành công!"){
               $result["status"] = 1;
             }
             return $result;
         }


         return $result;
      }
   }

     // lấy danh sách môn học
     function getListCTH($source)
     {
        return infoCTH($source);
     }

     

    
?>
