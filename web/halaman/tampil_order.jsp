<%-- 
    Document   : tampil_order
    Created on : Jan 15, 2021, 7:59:35 AM
    Author     : HP
--%>

<%@page import="com.mysql.jdbc.jdbc2.optional.MysqlDataSource"%>
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
              <a href="index.jsp?folder=halaman&file=tambah_pembeli.jsp" class="btn-warning pr-3 pl-3" style="border-radius: 5px;">Tambah Data</a>
              <a href="halaman/tampil_pembeli.jsp?exportToExcel=YES" class="btn-success pr-3 pl-3" style="border-radius: 5px;">Export ke Excel</a>
                  <table class="table">
                    <thead>
                      <tr class="btn-primary">
                        <th>Nama Lengkap</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <%@page import="function.*, java.util.*"%>
                        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
                        <%
                            List<forder> daftar_order=  order.getAllRecords();
                            request.setAttribute("daftar_order", daftar_order);
                        %>
                        <%
                                        String exportToExcel = request.getParameter("exportToExcel");
                                        if(exportToExcel != null && exportToExcel.toString().equalsIgnoreCase("YES")) {
                                            response.setContentType("application/vnd.ms-excel");
                                            response.setHeader("Content-Disposition", "inline; filename = DataPembeli.xls");
                                        }
                                             
                        %>
                        <c:forEach items="${daftar_order}">
                        <tr>
                             <td>${order.getId_pembelian()}</td>
                             
                         </tr>
                        </c:forEach>
              </tbody>
          </table>
    </div>
</div>