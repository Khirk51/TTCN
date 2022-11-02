
<?php

    include_once "library/Curl.php";
    include_once "library/simple_html_dom.php";
    
     function infoSV($source){
        $htmlLogin  = str_get_html($source);
        $msv =  ($htmlLogin->find(".container #lblStudentCode",0)->plaintext);
        $hoten =  ($htmlLogin->find(".container #lblStudentName",0)->plaintext);
        $lopex =  ($htmlLogin->find(".container #lblAdminClass",0)->plaintext);
        $trangthai =  ($htmlLogin->find(".container #lblstudentstatus",0)->plaintext);
        $arrString = explode("-",$lopex);
        $nganh = $arrString[count($arrString)-1];
        $lop = $arrString[count($arrString)-2];
        $khoa =  ($htmlLogin->find(".container #lblAy",0)->plaintext);
        return array("msv" => $msv,"hoten"=>$hoten,"lop"=>$lop,"nganh"=>$nganh,"khoa"=>$khoa,"trangthai"=>$trangthai);
     }

     function infoDiem($source){
        $htmlLoad  = str_get_html($source);
        $monhoc  = array();
        $dsachmon = $htmlLoad->find(".tableborder #tblStudentMark tr");
        $check = false; 
        foreach($dsachmon as $value){
            if(!$check) { $check = true;continue;}
            $td = $value->find("td");
            if(count($td) > 20){
                $items = array("mahp"=>$td[1]->plaintext,"tenhp"=>$td[2]->plaintext,"danhgia"=>$td[8]->plaintext,"tkhp"=>$td[16]->plaintext,"diemchu"=>$td[20]->plaintext);
                array_push($monhoc,$items);
            
            } 
        }
        return $monhoc;
     }

     
     function infoCTH($source){
        $htmlLoad  = str_get_html($source);
        $monhoc  = array();
        $dsachmon = $htmlLoad->find(".tableborder #tblCourse tr");
        $check = false; 
        foreach($dsachmon as $value){
            if(!$check) { $check = true;continue;}
            $td = $value->find("td");
            if(count($td) > 8){
                $items = array("mahp"=>$td[2]->plaintext,"tenhp"=>$td[3]->plaintext,"sotc"=>$td[4]->plaintext,"solt"=>$td[5]->plaintext,
                "soth"=>$td[6]->plaintext,"sotl"=>$td[7]->plaintext,"hocky"=>$td[8]->plaintext);
                array_push($monhoc,$items);
            
            } 
        }
        return $monhoc;
     }


     function getSource($Url, $cookie){
        return _HttpRequest(1,$Url,"",$cookie)["source"];
     }
     function setDataEditPass($passwordold,$password,$valueInSource){
        $data = [
            '__EVENTTARGET' => '',
            '__EVENTARGUMENT' => '',
            '__LASTFOCUS' => '',
            '__VIEWSTATE' => $valueInSource["__VIEWSTATE"],
            '__VIEWSTATEGENERATOR' => $valueInSource["__VIEWSTATEGENERATOR"],
            '__EVENTVALIDATION' => $valueInSource["__EVENTVALIDATION"],
            'PageHeader1$drpNgonNgu' => "ABAF46BD671247C5B5B52885BB2F9C49",
            'PageHeader1$hidisNotify' => "0",
            'PageHeader1$hidValueNotify' => "0",
            'txtOldPassword'   => $passwordold,
            'txtNewPassWord'   => $password,
            'btnChapNhan'   => 'Đổi mật khẩu',
            'txtRetypePassWord'   => $password,
        ];
        return http_build_query($data);
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