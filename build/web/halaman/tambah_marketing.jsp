<%-- 
    Document   : tambah_marketing
    Created on : Jan 15, 2021, 7:23:03 AM
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
              <h1>Tambah Data Marketing</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <form method="post" action="halaman/proses_inputMarketing.jsp">
                    <div class="form-group">
                      <label for="">Nama Marketing</label>
                      <input type="text" name="nama_mar" class="form-control">
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
                      <label for="">Email</label>
                      <input type="email" name="email" id="" cols="" rows="3" class="form-control">
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