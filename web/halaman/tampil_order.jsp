<%-- 
    Document   : tampil_order
    Created on : Jan 15, 2021, 7:59:35 AM
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
              <h1>Data Order</h1>
            </div>
            <hr class="bg-secondary"></hr>
              <a href="index.jsp?folder=halaman&file=tambah_order.jsp" class="btn-warning pr-3 pl-3" style="border-radius: 5px;">Tambah Data</a>
              <a href="halaman/tampil_order.jsp?exportToExcel=YES" class="btn-success pr-3 pl-3" style="border-radius: 5px;">Export ke Excel</a>
                  <table class="table">
                    <thead>
                      <tr class="btn-primary">
                        <th>No Order</th>
                        <th>Nama Pembeli</th>
                        <th>Tipe Rumah</th>
                        <th>Tanggal Pembayaran</th>
                        <th>Metode Pembayaran</th>
                        <th>Nama Marketing</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <%@page import="function.*, java.util.*"%>
                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                        <%
                            List<forder> list = order.getAllRecords();
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
                             <td>${u.getId_pembelian()}</td>
                             <td>${u.getNama_pembeli()}</td>
                             <td>${u.getTipe()}</td>
                             <td>${u.getTanggal()}</td>
                             <td>${u.getBayar()}</td>
                             <td>${u.getNama_marketing()}</td>
                             <td><a href="halaman/edit_order.jsp?id_pembelian=${u.getId_pembelian()}" class="badge badge-success">Edit</a> |
                                 <a href="halaman/hapus_order.jsp?id_pembelian=${u.getId_pembelian()}" class="badge badge-danger" onclick="return confirm('Anda yakin mau menghapus data ini?')">Delete</a></td>
                         </tr>
                        </c:forEach>
              </tbody>
          </table>
    </div>
</div>
