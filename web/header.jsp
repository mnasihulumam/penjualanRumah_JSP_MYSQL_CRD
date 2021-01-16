<%-- 
    Document   : header
    Created on : Jan 14, 2021, 11:54:25 PM
    Author     : HP
--%>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/admin.css">
    <link rel="stylesheet" href="fontawesome-free/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="Jquery/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="Jquery/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="Jquery/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function() {
            $('#datatable').DataTable();
        });
    </script>
    <title>Keandra | </title>
  </head>
  <nav class="navbar navbar-expand-lg navbar-light bg-warning fixed-top">
    <a class="navbar-brand" href="#">PENJUALAN RUMAH | KEANDRA</a>
      <div class="form-inline my-2 my-lg-0 ml-auto">
       
      </div>
      <div class="icon ml-4">
        <h5>
        <a href="halaman/logout.jsp" style="color: black;" onclick="return confirm('Anda yakin mau Logout?')"><i class="fas fa-sign-out-alt mr-3" data-toggle="tooltip" title="Sign Out" ></i></a>
        </h5>
      </div>
    </div>
  </nav>

  <div class="row no-gutters mt-5" id="menu"> 
      <div class="col-md-2 bg-dark mt-2 pr-3 pt-4">
        <ul class="nav flex-column ml-3 mb-5">
        <li class="nav-item">
          <a class="nav-link text-white" href="index.jsp"><i class="fas fa-tachometer-alt mr-2"></i> Dashboard</a> <hr class="bg-secondary"></hr>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="index.jsp?folder=halaman&file=tampil_rumah.jsp"><i class="fas fa-home mr-2"></i> Data Rumah</a><hr class="bg-secondary"></hr>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="index.jsp?folder=halaman&file=tampil_pembeli.jsp"><i class="fas fa-user-tie mr-2"></i> Data Pembeli</a><hr class="bg-secondary"></hr>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="index.jsp?folder=halaman&file=tampil_marketing.jsp"><i class="fas fa-user-edit mr-2"></i> Data Marketing</a><hr class="bg-secondary"></hr>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="index.jsp?folder=halaman&file=tampil_order.jsp"><i class="fas fa-dolly-flatbed mr-2"></i> Data Order</a><hr class="bg-secondary"></hr>
        </li>
        </ul>
      </div>
      <div class="col-md-10" id="konten">
