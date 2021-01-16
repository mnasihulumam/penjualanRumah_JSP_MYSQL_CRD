<%-- 
    Document   : edit_order
    Created on : Jan 15, 2021, 7:59:54 AM
    Author     : HP
--%>
<%@page import="function.koneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<%@page import="function.*, java.util.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!doctype html>
<%@ include file="header.jsp" %>
<div id="content">
  <div class="container-fluid" style="padding-bottom: 450px;">
    <div class="alert alert-dark">
              <h1>Edit Data Order</h1>
            </div>
            <hr class="bg-secondary"></hr>
          <form method="post" action="proses_editOrder.jsp">
              <%@page import="function.order,function.forder"%>
              <% 
                    String id = request.getParameter("id_pembelian");
                    forder j = order.getRecordById(Integer.parseInt(id));
               %>
             <div class="form-group">
              <label for="">Nama Pembali</label>
                <select id="" cols="" rows="3" class="form-control" name="nama"> 
                    <%
                            List<forder> list = order.getAllRecords();
                            request.setAttribute("list", list);
                    %>
                    <c:forEach items="${list}" var="j">
                        <option <%= j.getId_pembeli() %> value='<%= j.getId_pembeli() %>' ><%= j.getNama_pembeli() %></option>
                    </c:forEach>
                 </select>
            <div class="form-group">
             <label for="">Penghasilan Perbulan</label>
                 <select id="" cols="" rows="3" class="form-control" name="gaji">   
                          
                 </select>
            </div>
            <div class="form-group">
              <button type="submit" name="submit" class="btn btn-primary" onclick="return confirm('Anda yakin mau mengedit data ini ?')">Update</button> <button class="btn btn-warning"><a href="tampil_pembeli.jsp" style="text-decoration: none;">Kembali</a></button>
            </div>
             </div>    
                       </form>
      </div>
 </div>
 <%@ include file="footer.jsp" %>