<?php
    include_once "Curl.php";
    include_once "simple_html_dom.php";


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
               $result["msg"] =  $error;
               return $result;
           }
  
           // crawl thông tin học sinh
           $msv =  ($htmlLogin->find(".container #lblStudentCode",0)->plaintext);
           $hoten =  ($htmlLogin->find(".container #lblStudentName",0)->plaintext);
           $lopex =  ($htmlLogin->find(".container #lblAdminClass",0)->plaintext);
           $arrString = explode("-",$lopex);
           $nganh = $arrString[count($arrString)-1];
           $lop = $arrString[count($arrString)-2];
           $khoa =  ($htmlLogin->find(".container #lblAy",0)->plaintext);
           if(empty($msv)||empty($hoten)||empty($lop)||empty($khoa)||empty($nganh)){
                 $result["msg"] = "Lỗi! Không lấy được thông tin sinh viên!";
                 return $result;
           }

           // return
           $userInfo = array("cookie"=>$loginPOST["cookie"],"msv"=>$msv,"hoten"=>$hoten,"lop"=>$lop,"nganh"=>$nganh,"khoa"=>$khoa);
           $result["userInfo"] = $userInfo;
           $result["status"] = 1;
           $result["msg"] = "Đăng nhập thành công: ".$hoten;
            return $result;
        }
     }


    function setDataPost($username,$password,$valueInSource){
        $data = [
            '__EVENTTARGET' => '',
            '__EVENTARGUMENT' => '',
            '__LASTFOCUS' => '',
            '__VIEWSTATE' => $valueInSource["__VIEWSTATE"],
            '__VIEWSTATEGENERATOR' => $valueInSource["__VIEWSTATEGENERATOR"],
            '__EVENTVALIDATION' => $valueInSource["__EVENTVALIDATION"],
            'PageHeader1$drpNgonNgu' => "ABAF46BD671247C5B5B52885BB2F9C49",
            'PageHeader1$hidValueNotify' => ".",
            'txtUserName'   => $username,
            'txtPassword'   => $password,
            'btnSubmit'   => 'Đăng nhập',
            'hidUserId'   => '',
            'hidUserFullName'   => '',
            'hidTrainingSystemId'   => ''
        ];
        return http_build_query($data);
    }


    // Hàm tách params cần thiết 
    function valueInSource($string){
        $result = array("__EVENTTARGET"=>valueInString("__EVENTTARGET",$string),
                        "__EVENTARGUMENT"=>valueInString("__EVENTARGUMENT",$string),
                        "__LASTFOCUS"=>valueInString("__LASTFOCUS",$string),
                        "__VIEWSTATE"=>valueInString("__VIEWSTATE",$string),
                        "__VIEWSTATEGENERATOR"=>valueInString("__VIEWSTATEGENERATOR",$string),
                        "__EVENTVALIDATION"=>valueInString("__EVENTVALIDATION",$string));
        return $result;
    }


    // hàm stringRegex
    function valueInString($name,$string)
    {
        preg_match_all('<input type="hidden" name="'.$name.'" id="'.$name.'" value="(.*?)" />', $string, $match);
        if(!empty($match[1][0])){
            return $match[1][0];
        }

        return NULL;
    }


    
?>
