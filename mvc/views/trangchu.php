<?php
    if(!isset($_SESSION["userInfo"])){
        header("location: ".URLDEFAULT."/Taikhoan");
        exit;
    }
    echo '
    <a > Họ và tên : '.($_SESSION["userInfo"]["hoten"]).' </a> <br>'.
    '<a > Mã sinh viên : '.($_SESSION["userInfo"]["msv"]).' </a> <br>'.
    '<a > Khoá : '.($_SESSION["userInfo"]["khoa"]).' </a> <br>'.
    '<a > Ngành : '.($_SESSION["userInfo"]["nganh"]).' </a> <br>'.
    '<a > Lớp : '.($_SESSION["userInfo"]["lop"]).' </a> <br>';
?>

<a href="<?php echo URLDEFAULT."/Trangcanhan"; ?>"> trang cá nhân </a> <br>
<a href="<?php echo URLDEFAULT."/Taikhoan/dangxuat"; ?>"> đăng xuất </a>