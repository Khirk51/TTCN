<?php
    if(!isset($_SESSION["user"])){
        header("location: ".URLDEFAULT."/Taikhoan");
        exit;
    }
?>

<a href="<?php echo URLDEFAULT."/Trangcanhan"; ?>"> trang cá nhân </a> <br>
<a href="<?php echo URLDEFAULT."/Taikhoan/dangxuat"; ?>"> đăng xuất </a>