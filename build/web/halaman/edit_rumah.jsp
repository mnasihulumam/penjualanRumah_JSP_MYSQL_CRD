<%-- 
    Document   : edit_rumah
    Created on : Jan 14, 2021, 11:24:55 PM
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>  <%--
<%
    String username = (String)session.getAttribute("username");
    // redirect user to login page if not logged in
    if(username == null){
        response.sendRedirect("../login.jsp");
    }
%>
--%>
<!doctype html>
<%@ include file="header.jsp" %>
<div id="content">
  <div class="container-fluid" style="padding-bottom: 450px;">
    <div class="alert alert-dark">
              <h1>Edit Data Rumah</h1>
            </div>
            <hr class="bg-secondary"></hr>
          <form method="post" action="proses_editRumah.jsp">
              <%@page import="function.rumah,function.frumah"%>
              <% 
                    String id = request.getParameter("no_rumah");
                    frumah u = rumah.getRecordById(Integer.parseInt(id));
               %>
             <div class="form-group">
              <label for="">No Rumah</label>
              <input type="text" name="no_rumah" value="<%=u.getNo_rumah()%>" class="form-control" readonly>
            </div>
             <div class="form-group">
              <label for="">Tipe Rumah</label>
              <select name="tipe" class="form-control">
                          <option value="">-- Pilih Tipe Rumah --</option>
                          <option value="A" <%= u.getTipe().equals("A")? "selected=\"selected\"": "" %>>A</option>
                          <option value="B" <%= u.getTipe().equals("B")? "selected=\"selected\"": "" %>>B</option>
                          <option value="C" <%= u.getTipe().equals("C")? "selected=\"selected\"": "" %>>C</option>
                          <option value="D" <%= u.getTipe().equals("D")? "selected=\"selected\"": "" %>>D</option>
                          <option value="E" <%= u.getTipe().equals("E")? "selected=\"selected\"": "" %>>E</option>
               </select>
            </div>
            <div class="form-group">
              <label for="">Lokasi Rumah</label>
              <select name="lokasi" class="form-control">
                          <option value="">-- Pilih Lokasi Rumah --</option>
                          <option value="Sektor 1" <%= u.getLokasi().equals("Sektor 1")? "selected=\"selected\"": "" %>>Sektor 1</option>
                          <option value="Sektor 2" <%= u.getLokasi().equals("Sektor 2")? "selected=\"selected\"": "" %>>Sektor 2</option>
                          <option value="Sektor 3" <%= u.getLokasi().equals("Sektor 3")? "selected=\"selected\"": "" %>>Sektor 3</option>
                          <option value="Sektor 4" <%= u.getLokasi().equals("Sektor 4")? "selected=\"selected\"": "" %>>Sektor 4</option>
                          <option value="Sektor 5" <%= u.getLokasi().equals("Sektor 5")? "selected=\"selected\"": "" %>>Sektor 5</option>
                          <option value="Sektor 6" <%= u.getLokasi().equals("Sektor 6")? "selected=\"selected\"": "" %>>Sektor 6</option>
                          <option value="Sektor 7" <%= u.getLokasi().equals("Sektor 7")? "selected=\"selected\"": "" %>>Sektor 7</option>
                          <option value="Sektor 8" <%= u.getLokasi().equals("Sektor 8")? "selected=\"selected\"": "" %>>Sektor 8</option>
             </select>
            </div>
            <div class="form-group">
              <label for="">Tahun Berdiri</label>
              <input type="text" name="tahun" value="<%=u.getTahun()%>" class="form-control">
            </div>
            <div class="form-group">
              <label for="">Harga</label>
              <input type="text" name="harga" value="<%=u.getHarga() %>" class="form-control">
            </div>
            <div class="form-group">
              <button type="submit" name="submit" class="btn btn-primary" onclick="return confirm('Anda yakin mau mengedit data ini ?')">Update</button> <button class="btn btn-warning"><a href="tampil_barang.jsp" style="text-decoration: none;">Kembali</a></button>
            </div>
          </form>
      </div>
 </div>
 <%@ include file="footer.jsp" %>
