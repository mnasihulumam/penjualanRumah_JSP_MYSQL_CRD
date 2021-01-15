<%-- 
    Document   : tampil_rumah
    Created on : Jan 14, 2021, 9:53:09 PM
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
              <h1>Data Rumah</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <a href="index.jsp?folder=halaman&file=tambah_rumah.jsp" class="btn-warning pr-3 pl-3" style="border-radius: 5px;">Tambah Data</a>
              <a href="halaman/tampil_rumah.jsp?exportToExcel=YES" class="btn-success pr-3 pl-3" style="border-radius: 5px;">Export ke Excel</a>
                  <table class="table">
                    <thead>
                      <tr class="btn-primary">
                        <th>Tipe Rumah</th>
                        <th>Lokasi</th>
                        <th>Tahun Berdiri</th>
                        <th>Harga (Rp)</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <%@page import="function.*, java.util.*"%>
                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                        <%
                            List<frumah> list = rumah.getAllRecords();
                            request.setAttribute("list", list);
                        %>
                        <%
                                        String exportToExcel = request.getParameter("exportToExcel");
                                        if(exportToExcel != null && exportToExcel.toString().equalsIgnoreCase("YES")) {
                                            response.setContentType("application/vnd.ms-excel");
                                            response.setHeader("Content-Disposition", "inline; filename = DataRumah.xls");
                                        }
                                             
                        %>
                        <c:forEach items="${list}" var="u">
                        <tr>
                             <td>${u.getTipe()}</td>
                             <td>${u.getLokasi()}</td>
                             <td>${u.getTahun()}</td>
                             <td>${u.getHarga()}</td>
                             <td><a href="halaman/edit_rumah.jsp?no_rumah=${u.getNo_rumah()}" class="badge badge-success">Edit</a> |
                                 <a href="halaman/hapus_rumah.jsp?no_rumah=${u.getNo_rumah()}" class="badge badge-danger" onclick="return confirm('Anda yakin mau menghapus data ini?')">Delete</a></td>
                         </tr>
                        </c:forEach>
              </tbody>
          </table>
    </div>
</div>
