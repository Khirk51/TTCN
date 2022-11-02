<?php

class Uploader {

   
    public function __construct() {

    }
    function uploadFile($file,$msv){
        $result = array("status" => -1, "dir" => "", "msg" => "Lỗi! không up được");
        if (!isset($file))
        {
            $result["msg"] =  "Dữ liệu không đúng cấu trúc";
            return $result;
        }

        // Kiểm tra dữ liệu có bị lỗi không
        if ($file['error'] != 0)
        {
            $result["msg"] =  "Dữ liệu upload bị lỗi";
            return $result;
        }

        // Đã có dữ liệu upload, thực hiện xử lý file upload

        //Thư mục bạn sẽ lưu file upload
        //Vị trí file lưu tạm trong server (file sẽ lưu trong uploads, với tên giống tên ban đầu)
       

        $allowUpload   = true;

        //Lấy phần mở rộng của file (jpg, png, ...)
        $imageFileType = pathinfo(basename($file["name"]),PATHINFO_EXTENSION);
        
        $target_dir    = "public/uploads/";
        $target_file   = $target_dir . md5($msv."thandeptrai").".".$imageFileType;
        // Cỡ lớn nhất được upload (bytes)
        $maxfilesize   = 800000;

        ////Những loại file được phép upload
        $allowtypes    = array('jpg', 'png', 'jpeg', 'gif');


        if(isset($_POST["submit"])) {
            //Kiểm tra xem có phải là ảnh bằng hàm getimagesize
            $check = getimagesize($file["tmp_name"]);
            if($check !== false)
            {
                $allowUpload = true;
            }
            else
            {
              
                $allowUpload = false;
            }
        }

       
        // Kiểm tra kích thước file upload cho vượt quá giới hạn cho phép
        if ($file["size"] > $maxfilesize)
        {
            $allowUpload = false;
        }


        // Kiểm tra kiểu file
        if (!in_array($imageFileType,$allowtypes ))
        {
            $allowUpload = false;
        }


        if ($allowUpload)
        {
            // Xử lý di chuyển file tạm ra thư mục cần lưu trữ, dùng hàm move_uploaded_file
            if (move_uploaded_file($file["tmp_name"], $target_file))
            {
                $result["msg"] =  "Up ảnh  thành công!";
                $result["dir"] = $target_file;
                $result["status"] = 1;
                return $result;
            }
            else
            {
                $result["msg"] =  "Có lỗi xảy ra khi upload file";
                return $result;
               
            }
        }
        else
        {
            $result["msg"] =  "Không upload được file, có thể do file lớn, kiểu file không đúng ...";
            return $result;
        }
    }
}