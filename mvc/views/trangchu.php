<?php
    if(!isset($_SESSION["id"])){
        header("location: ".URLDEFAULT."/Dangnhap");
        exit;
    }
?>

<a href="<?php echo URLDEFAULT."/Dangnhap/dangxuat"; ?>"> đăng xuất </a>