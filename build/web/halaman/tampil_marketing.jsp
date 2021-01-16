<%-- 
    Document   : tampil_marketing
    Created on : Jan 15, 2021, 7:22:24 AM
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
              <h1>Data Marketing</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <a href="index.jsp?folder=halaman&file=tambah_marketing.jsp" class="btn-warning pr-3 pl-3" style="border-radius: 5px;">Tambah Data</a>
              <a href="halaman/tampil_marketing.jsp?exportToExcel=YES" class="btn-success pr-3 pl-3" style="border-radius: 5px;">Export ke Excel</a>
                  <table class="table">
                    <thead>
                      <tr class="btn-primary">
                        <th>Nama Lengkap</th>
                        <th>Jenis Kelamin</th>
                        <th>Agama</th>
                        <th>Email</th>
                        <th>Alamat</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <%@page import="function.*, java.util.*"%>
                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                        <%
                            List<fmarketing> list = marketing.getAllRecords();
                            request.setAttribute("list", list);
                        %>
                        <%
                                        String exportToExcel = request.getParameter("exportToExcel");
                                        if(exportToExcel != null && exportToExcel.toString().equalsIgnoreCase("YES")) {
                                            response.setContentType("application/vnd.ms-excel");
                                            response.setHeader("Content-Disposition", "inline; filename = DataMarketing.xls");
                                        }
                                             
                        %>
                        <c:forEach items="${list}" var="u">
                        <tr>
                             <td>${u.getNama_mar()}</td>
                             <td>${u.getJk()}</td>
                             <td>${u.getAgama()}</td>
                             <td>${u.getEmail()}</td>
                             <td>${u.getAlamat()}</td>
                             <td><a href="halaman/edit_marketing.jsp?id_marketing=${u.getId_marketing()}" class="badge badge-success">Edit</a> |
                                 <a href="halaman/hapus_marketing.jsp?id_marketing=${u.getId_marketing()}" class="badge badge-danger" onclick="return confirm('Anda yakin mau menghapus data ini?')">Delete</a></td>
                         </tr>
                        </c:forEach>
              </tbody>
          </table>
    </div>
</div>
