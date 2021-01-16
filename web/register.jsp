<%-- 
    Document   : register
    Created on : Jan 16, 2021, 10:02:54 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>INVENTARIS UNIKU | Login</title>

  <!-- Custom fonts for this template-->
  <link href="fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="css/fontnunito.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="bootstrap/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9" style="margin-top: 90px;">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div><img src="img/login.png" style="height: 300px; width: 300px; margin-top: 70px; margin-left: 50px;"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                      <h1 class="h4 text-gray-900 mb-4"><b>Register</b></h1>
                    <hr></hr>
                  </div>
                  <form class="user" method="post" action="proses_register.jsp" name="register">
                     <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Nama" name="nama_user" required oninvalid="this.setCustomValidity('Nama Tidak Boleh Kosong!')" oninput="setCustomValidity(')" />
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Username" name="username" required oninvalid="this.setCustomValidity('Username Tidak Boleh Kosong!')" oninput="setCustomValidity(')" />
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" name="password" required oninvalid="this.setCustomValidity('Password Tidak Boleh Kosong!')" oninput="setCustomValidity(')" />
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                      </div>
                    </div>
                    <button class="btn btn-primary btn-user btn btn-block" type="submit" name="submit">Register</button>
                    <button class="btn btn-warning btn-user btn btn-block" type="reset" name="cancel">Cancel</button>
                    <p align="center">Sudah Memiliki Akun? <a href="login.jsp">Login Disini!</a></p>
                    <hr>
                    <p align="center">KOTA BARU KEANDRA</p>
                    <p align="center">All Rights Reserved by M. Nasihul Umam &copy 2020</p>
                  </form>
                  <hr>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="bootstrap/js/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="bootstrap/js/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="bootstrap/js/sb-admin-2.min.js"></script>

</body>

</html>