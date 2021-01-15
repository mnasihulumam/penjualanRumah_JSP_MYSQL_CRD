<%-- 
    Document   : edit_pembeli
    Created on : Jan 15, 2021, 1:11:42 AM
    Author     : HP
--%>

<!doctype html>
<%@ include file="header.jsp" %>
<div id="content">
  <div class="container-fluid" style="padding-bottom: 450px;">
    <div class="alert alert-dark">
              <h1>Edit Data Pembeli</h1>
            </div>
            <hr class="bg-secondary"></hr>
          <form method="post" action="proses_editPembeli.jsp">
              <%@page import="function.pembeli,function.fpembeli"%>
              <% 
                    String id = request.getParameter("id_pembeli");
                    fpembeli u = pembeli.getRecordById(Integer.parseInt(id));
               %>
             <div class="form-group">
              <label for="">Id Pembali</label>
              <input type="text" name="id_pembeli" value="<%=u.getId_pembeli() %>" class="form-control" readonly>
            </div>
            <div class="form-group">
              <label for="">Nama Lengkap</label>
              <input type="text" name="nama" value="<%=u.getNama()%>" class="form-control">
            </div>
             <div class="form-group">
               <label for="">Jenis Kelamin</label><br>
               <input type="radio" name="jk" value="L" <%= u.getJk().equals("L") ?"checked=\"checked\"": "" %>>L
               <input type="radio" name="jk" value="P" <%= u.getJk().equals("P")?"checked=\"checked\"":"" %>>P
            </div>
            <div class="form-group">
              <label for="">Agama</label>
              <select id="" cols="" rows="3" class="form-control" name="agama">
                    <option value="">-- Pilih Agama --</option>
                    <option value="Islam" <%= u.getAgama().equals("Islam") ? "selected=\"selected\"": "" %> >Islam</option>
                    <option value="Kristen" <%= u.getAgama().equals("Kristen") ? "selected=\"selected\"": "" %>>Kristen</option>
                    <option value="Katolik" <%= u.getAgama().equals("Katolik") ? "selected=\"selected\"": "" %>>Katolik</option>
                    <option value="Hindu" <%= u.getAgama().equals("Hindu") ? "selected=\"selected\"": "" %>>Hindu</option>
                    <option value="Budha" <%= u.getAgama().equals("Budha") ? "selected=\"selected\"": "" %>>Budha</option>
                    <option value="Konghucu" <%= u.getAgama().equals("Konghucu") ? "selected=\"selected\"": "" %>>Konghucu</option>
              </select>
            </div>
            <div class="form-group">
              <label for="">NO HP</label>
              <input type="text" name="no_hp" value="<%= u.getNo_hp() %>" class="form-control">
            </div>
            <div class="form-group">
                      <label for="">Penghasilan Perbulan</label>
                      <select id="" cols="" rows="3" class="form-control" name="gaji">
                          <option value="">-- Pilih Penghasilan Perbulan --</option>
                          <option value="<= 1 Juta" <%= u.getGaji().equals("<= 1 Juta") ? "selected=\"selected\"": "" %>><= 1 Juta</option>
                          <option value="> 1 Juta < 5 Juta" <%= u.getGaji().equals("> 1 Juta < 5 Juta") ? "selected=\"selected\"": "" %>>> 1 Juta < 5 Juta</option>
                          <option value=">= 5 Juta" <%= u.getGaji().equals(">= 5 Juta") ? "selected=\"selected\"": "" %>>>= 5 Juta</option>
                      </select>
            </div>
            <div class="form-group">
              <label for="">Alamat</label>
              <textarea name="alamat" id="" cols="" rows="3" class="form-control"><%= u.getAlamat() %></textarea>
            </div>
            <div class="form-group">
              <button type="submit" name="submit" class="btn btn-primary" onclick="return confirm('Anda yakin mau mengedit data ini ?')">Update</button> <button class="btn btn-warning"><a href="tampil_pembeli.jsp" style="text-decoration: none;">Kembali</a></button>
            </div>
          </form>
      </div>
 </div>
 <%@ include file="footer.jsp" %>
