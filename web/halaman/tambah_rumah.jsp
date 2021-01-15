<%-- 
    Document   : tambah_rumah
    Created on : Jan 14, 2021, 10:56:40 PM
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
              <h1>Tambah Data Rumah</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <form method="POST" action="halaman/proses_inputRumah.jsp">
                    <div class="form-group">
                      <label for="">Tipe Rumah</label>
                      <select name="tipe" class="form-control">
                          <option value="">-- Pilih Tipe Rumah --</option>
                          <option value="A">A</option>
                          <option value="B">B</option>
                          <option value="C">C</option>
                          <option value="D">D</option>
                          <option value="E">E</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="">Lokasi</label>
                      <select name="lokasi" class="form-control">
                          <option value="">-- Pilih Lokasi Rumah --</option>
                          <option value="Sektor 1">Sektor 1</option>
                          <option value="Sektor 2">Sektor 2</option>
                          <option value="Sektor 3">Sektor 3</option>
                          <option value="Sektor 4">Sektor 4</option>
                          <option value="Sektor 5">Sektor 5</option>
                          <option value="Sektor 6">Sektor 6</option>
                          <option value="Sektor 7">Sektor 7</option>
                          <option value="Sektor 8">Sektor 8</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="">Tahun Berdiri</label><br>
                      <input type="text" name="tahun" class="form-control">
                    </div>
                    <div class="form-group">
                      <label for="">Harga (Rp)</label>
                      <input type="text" name="harga" class="form-control">
                    </div>
                    <div class="form-group">
                        <button type="submit" id="submit" name="submit" class="btn btn-primary">Submit</button> <button class="btn btn-warning"><a href="../index.jsp?folder=halaman&file=tampil_barang.jsp" style="text-decoration: none;">Kembali</a></button>
                    </div>
              </form>
          </div>
        </div>
