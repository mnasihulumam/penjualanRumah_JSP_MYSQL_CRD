<%-- 
    Document   : tambah_pembeli
    Created on : Jan 15, 2021, 1:10:53 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%
    String username = (String)session.getAttribute("username");
    // redirect user to login page if not logged in
    if(username == null){
        response.sendRedirect("../login.jsp");
    }
%>

   <hr>
        <div id="content">
          <div class="container-fluid" style="padding-bottom: 450px;">
            <div class="alert alert-dark">
              <h1>Tambah Data Pembeli</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <form method="post" action="halaman/proses_inputPembeli.jsp">
                    <div class="form-group">
                      <label for="">Nama Pegawai</label>
                      <input type="text" name="nama" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="">Jenis Kelamin</label><br>
                      <input type="radio" name="jk" value="L">L
                      <input type="radio" name="jk" value="P">P
                    </div>
                  <div class="form-group">
                      <label for="">Agama</label>
                      <select id="" cols="" rows="3" class="form-control" name="agama">
                          <option value="">-- Pilih Agama --</option>
                          <option value="Islam">Islam</option>
                          <option value="Kristen">Kristen</option>
                          <option value="Katolik">Katolik</option>
                          <option value="Hindu">Hindu</option>
                          <option value="Budha">Budha</option>
                          <option value="Konghucu">Konghucu</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="">No HP</label>
                      <input type="text" name="no_hp" id="" cols="" rows="3" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="">Penghasilan Perbulan</label>
                      <select id="" cols="" rows="3" class="form-control" name="gaji">
                          <option value="">-- Pilih Penghasilan Perbulan --</option>
                          <option value="<= 1 Juta"><= 1 Juta</option>
                          <option value="> 1 Juta < 5 Juta">> 1 Juta < 5 Juta</option>
                          <option value=">= 5 Juta">>= 5 Juta</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="">Alamat</label>
                      <textarea name="alamat" id="" cols="" rows="3" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                      <button type="submit" name="submit" class="btn btn-primary">Submit</button> <button class="btn btn-warning"><a href="../index.jsp?folder=halaman&file=tampil_pegawai.jsp" style="text-decoration: none;">Kembali</a></button>
                    </div>
              </form>
      </div>
</div>