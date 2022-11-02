<?php
   // Hàm gửi request ( Curl )
   function _HttpRequest($type,$url,$postData = "",$cookie= "",$header = ""){
    $result = array("cookie"=>null,"source"=>null);

    $curl = curl_init();
    //set header
    if(!empty($header)) curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
    
    if($type == 2){
        curl_setopt_array($curl, array(
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $url,
            CURLOPT_POST => 1,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_COOKIESESSION => true,
            CURLOPT_COOKIEJAR => "cookie.txt",
            CURLOPT_COOKIEFILE => "cookie.txt",
            CURLOPT_POSTFIELDS =>  $postData
            
        ));
    
    }else{
        curl_setopt_array($curl, array(
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_URL => $url,
            CURLOPT_SSL_VERIFYPEER => false
        ));
    }

    //set Cookie
    if(!empty($cookie)) curl_setopt($curl, CURLOPT_COOKIE , convertCookie($cookie));


    $result["source"] = curl_exec($curl);
    $result["cookie"] = curl_getinfo($curl,CURLINFO_COOKIELIST);
    curl_close($curl);
    return $result;
}
function convertCookie($cookies)
{
    $cookie = "";
    $show = '';
    $delim = '';
    foreach ($cookies as $k => $v){
      $str = explode("	",$v);
      $cookie .= $str[count($str)-2]."=".$str[count($str)-1].";";
    }
    return $cookie;
}
?>