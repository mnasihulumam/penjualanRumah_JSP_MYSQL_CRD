<%-- 
    Document   : tampil_pembeli
    Created on : Jan 15, 2021, 12:41:06 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 

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
              <h1>Data Pembeli</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <a href="index.jsp?folder=halaman&file=tambah_pembeli.jsp" class="btn-warning pr-3 pl-3" style="border-radius: 5px;">Tambah Data</a>
              <a href="halaman/tampil_pembeli.jsp?exportToExcel=YES" class="btn-success pr-3 pl-3" style="border-radius: 5px;">Export ke Excel</a>
                  <table class="table">
                    <thead>
                      <tr class="btn-primary">
                        <th>Nama Lengkap</th>
                        <th>Jenis Kelamin</th>
                        <th>Agama</th>
                        <th>No Hp</th>
                        <th>Penghasilan</th>
                        <th>Alamat</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <%@page import="function.*, java.util.*"%>
                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                        <%
                            List<fpembeli> list = pembeli.getAllRecords();
                            request.setAttribute("list", list);
                        %>
                        <%
                                        String exportToExcel = request.getParameter("exportToExcel");
                                        if(exportToExcel != null && exportToExcel.toString().equalsIgnoreCase("YES")) {
                                            response.setContentType("application/vnd.ms-excel");
                                            response.setHeader("Content-Disposition", "inline; filename = DataPembeli.xls");
                                        }
                                             
                        %>
                        <c:forEach items="${list}" var="u">
                        <tr>
                             <td>${u.getNama()}</td>
                             <td>${u.getJk()}</td>
                             <td>${u.getAgama()}</td>
                             <td>${u.getNo_hp()}</td>
                             <td>${u.getGaji()}</td>
                             <td>${u.getAlamat()}</td>
                             <td><a href="halaman/edit_pembeli.jsp?id_pembeli=${u.getId_pembeli()}" class="badge badge-success">Edit</a> |
                                 <a href="halaman/hapus_pembeli.jsp?id_pembeli=${u.getId_pembeli()}" class="badge badge-danger" onclick="return confirm('Anda yakin mau menghapus data ini?')">Delete</a></td>
                         </tr>
                        </c:forEach>
              </tbody>
          </table>
    </div>
</div>
