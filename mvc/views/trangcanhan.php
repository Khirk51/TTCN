

<?php include_once("public/assets/include/header.php"); ?>

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed" href="index.html">
          <i class="bi bi-grid"></i>
          <span>Trang chủ</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Đăng ký học</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="components-alerts.html">
              <i class="bi bi-circle"></i><span>Đăng ký học chuyển đổi</span>
            </a>
          </li>
          <li>
            <a href="components-accordion.html">
              <i class="bi bi-circle"></i><span>Lịch sử đăng ký học</span>
            </a>
          </li>
         <li>
            <a href="components-accordion.html">
              <i class="bi bi-circle"></i><span>Lịch học hiện tại</span>
            </a>
          </li>
        </ul>
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Dữ liệu học tập</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
        <li>
            <a href="forms-elements.html">
              <i class="bi bi-circle"></i><span>Chương trình học</span>
            </a>
          </li>
          <li>
            <a href="forms-elements.html">
              <i class="bi bi-circle"></i><span>Bảng điểm</span>
            </a>
          </li>
          <li>
            <a href="components-accordion.html">
              <i class="bi bi-circle"></i><span>Thời khoá biểu chuyển đổi</span>
            </a>
          </li>
       
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Hỗ trợ</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="tables-general.html">
              <i class="bi bi-circle"></i><span>Bảng hỗ trợ</span>
            </a>
          </li>
         
        </ul>
      </li><!-- End Tables Nav -->



      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link " href="Trangcanhan">
          <i class="bi bi-person"></i>
          <span>Trang cá nhân</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-contact.html">
          <i class="bi bi-envelope"></i>
          <span>Liên hệ</span>
        </a>
      </li><!-- End Contact Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Trang cá nhân</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
          <li class="breadcrumb-item">Tài khoản</li>
          <li class="breadcrumb-item active">Trang cá nhân</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-4">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

              <img src="<?php echo $data["userData"]["avatar"]; ?>" alt="Profile" class="rounded-circle">
              <h2><?php echo $data["userData"]["hoten"]; ?></h2>
              <h3><?php echo $data["userData"]["lop"]."-".$data["userData"]["nganh"]; ?></h3>
              <div class="social-links mt-2">
                <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div>

        </div>

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link <?php if(isset($data["at_1"])) echo "active"; ?>" data-bs-toggle="tab" data-bs-target="#profile-overview">Thông tin</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link <?php if(isset($data["at_2"])) echo "active"; ?>" data-bs-toggle="tab" data-bs-target="#profile-edit">Thay đổi</button>
                </li>

             

                <li class="nav-item">
                  <button class="nav-link <?php if(isset($data["at_3"])) echo "active"; ?>" data-bs-toggle="tab" data-bs-target="#profile-change-password">Đổi mật khẩu</button>
                </li>

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade  profile-overview <?php if(isset($data["at_1"])) echo "active show"; ?>" id="profile-overview">
                  <h5 class="card-title">Lưu ý</h5>
                  <p class="small fst-italic">Những thông tin dưới đây được cập nhật tự động từ website "Vinhuni.edu.vn", những thông tin bảo mật (Tài khoản, mật khẩu) sẽ không được lưu để bảo vệ thông tin của bạn.</p>

                  <h5 class="card-title">Thông tin tài khoản</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Họ và Tên</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["hoten"]; ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Mã sinh viên</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["msv"]; ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Ngành học</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["nganh"]; ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Lớp</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["lop"]; ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Khoá học</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["khoa"]; ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Số điện thoại</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["sdt"]==NULL?"Chưa có":$data["userData"]["sdt"]; ?></div>
                  </div>
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Email</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["email"]==NULL?"Chưa có":$data["userData"]["email"]; ?></div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Trạng thái học</div>
                    <div class="col-lg-9 col-md-8"><?php echo $data["userData"]["trangthai"]; ?></div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3  <?php if(isset($data["at_2"])) echo "active show"; ?>" id="profile-edit">

                  <!-- Profile Edit Form -->
                  <form action="Trangcanhan/capnhat" method="POST"  enctype="multipart/form-data">
                    <div class="row mb-3">
                      <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Ảnh đại diện</label>
                      <div class="col-md-8 col-lg-9">
                        <img id="blah" src="<?php echo $data["userData"]["avatar"]; ?>" alt="Profile">
                        <input id="upload" name="upload" type="file" accept="image/png, image/gif, image/jpeg" value=""  hidden>
                        <div class="pt-2">
                          <div href="#" class="btn btn-primary btn-sm" title="Upload new profile image" id="upload_avatar"><i  class="bi bi-upload"></i></div>
                          <div href="#" class="btn btn-danger btn-sm" title="Remove my profile image" data-bs-toggle="modal" data-bs-target="#xoaModel"><i class="bi bi-trash"></i></div>
                        </div>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Họ và tên</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="fullName" type="text" class="form-control" id="fullName" value="<?php echo $data["userData"]["hoten"]; ?>" disabled>
                      </div>
                    </div>


                    <div class="row mb-3">
                      <label for="msv" class="col-md-4 col-lg-3 col-form-label">Mã sinh viên</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="company" type="text" class="form-control" id="company" value="<?php echo $data["userData"]["msv"]; ?>" disabled>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="nganh" class="col-md-4 col-lg-3 col-form-label">Ngành học</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="job" type="text" class="form-control" id="Job" value="<?php echo $data["userData"]["nganh"]; ?>"disabled>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="lop" class="col-md-4 col-lg-3 col-form-label">Lớp</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="country" type="text" class="form-control" id="Country" value="<?php echo $data["userData"]["lop"]; ?>"disabled>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="khoa" class="col-md-4 col-lg-3 col-form-label">Khoá học</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="address" type="text" class="form-control" id="Address" value="<?php echo $data["userData"]["khoa"]; ?>"disabled>
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Số điện thoại</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="phone" type="text" class="form-control" id="phone" value="<?php echo $data["userData"]["sdt"]; ?>">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="email" type="email" class="form-control" id="Email" value="<?php echo $data["userData"]["email"]; ?>">
                      </div>
                    </div>
                    <div class="text-center">

                      <button type="submit" id="btnSave"  name="btnSave" class="btn btn-primary">Lưu thay đổi</button>
                    </div>
                  </form><!-- End Profile Edit Form -->

                </div>

                <div class="tab-pane fade pt-3 <?php if(isset($data["at_3"])) echo "active show"; ?>" id="profile-change-password">
                  <!-- Change Password Form -->
                  <form action="Trangcanhan/doimatkhau" method="POST">
                  <h5 class="card-title">Lưu ý</h5>
                  <p class="small fst-italic">Khi đổi mật khẩu ở đây, tài khoản student.vinhuni.edu.vn sẽ bị đổi mật khẩu theo, hãy đổi khi bạn chắc chắn!.</p>

                  <h5 class="card-title">Đổi mật khẩu</h5>
                    <div class="row mb-3">
                      <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Mật khẩu cũ</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="passwordOld" type="password" class="form-control" id="passwordOld">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="passwordNew" class="col-md-4 col-lg-3 col-form-label">Mật khẩu mới</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="passwordNew" type="password" class="form-control" id="passwordNew">
                      </div>
                    </div>

                    <div class="row mb-3">
                      <label for="passwordNewRe" class="col-md-4 col-lg-3 col-form-label">Nhập lại mật khẩu mới</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="passwordNewRe" type="password" class="form-control" id="passwordNewRe">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" name="btnEditPass" id="btnEditPass" class="btn btn-primary">Đổi mật khẩu</button>
                    </div>
                  </form>

                </div>

              </div><!-- End Bordered Tabs -->

            </div>
          </div>

        </div>
      </div>

      

    </section>
    <div class="modal fade" id="xoaModel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Bạn chắc chắn muốn xoá ảnh đại diện?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
        
        <a type="button" href="Trangcanhan/xoaava" class="btn btn-primary">Xoá</a>
      </div>
    </div>
    
  </div>
</div>
    <?php
    if( (isset($data["error"]) && !empty($data["error"])) ||  (isset($data["success"]) && !empty($data["success"])) ){
      $color = isset($data["success"])?"blue":"red";
      $msg = isset($data["success"])?$data["success"]:$data["error"];
      echo ' 
      <div id="alert" class="position-fixed bottom-0 end-0 p-3 " style="z-index: 11">
        <div id="liveToast" class="toast show" role="alert" aria-live="assertive" aria-atomic="true">
          <div class="toast-header">
            <img src="public/assets/img/logo.png" class="rounded me-1"  width="20" height="20" alt="...">
            <strong class="me-auto">Thông báo</strong>
            <small>Bây giờ</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
          </div>
         <center> <div  class="toast-body" style="color:'.$color.'" >
             '.$msg.'
          </div></center>
        </div>
      </div>
      
      <script>
      window.setTimeout(function() {
          $("#alert").fadeTo(500, 0).slideUp(500, function(){
              $(this).remove(); 
          });
      }, 4000);
      </script>
      ';
    }
    ?>


  <script>
  
    $(document).ready(function(){
      $("#upload_avatar").click(function(){
        document.getElementById("upload").click();
      });
    });
        upload.onchange = evt => {
        const [file] = upload.files
        if (file) {
          blah.src = URL.createObjectURL(file)
        }
      }
  </script>

  </main><!-- End #main -->
  

<?php include_once("public/assets/include/footer.php"); ?>
