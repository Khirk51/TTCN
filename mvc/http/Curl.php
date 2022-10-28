<?php
    // Hàm gửi request ( Curl )
    function _HttpRequest($type,$url,$postData = "",$cookie= "",$header = ""){
        $curl = curl_init();

        //set header
        if(!empty($header)) curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
        
        if($type == 2){
            curl_setopt_array($curl, array(
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_URL => $url,
                CURLOPT_POST => 1,
                CURLOPT_SSL_VERIFYPEER => false,
                CURLOPT_POSTFIELDS =>  $postData
                
            ));
        
        }else{
            curl_setopt_array($curl, array(
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_URL => $url,
                CURLOPT_SSL_VERIFYPEER => false
            ));
        }
        $result = curl_exec($curl);
        curl_close($curl);
        return $result;
    }

    // Hàm tách params cần thiết để đăng nhập
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
