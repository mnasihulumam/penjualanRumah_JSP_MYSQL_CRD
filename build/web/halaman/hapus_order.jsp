<%-- 
    Document   : hapus_order
    Created on : Jan 15, 2021, 7:59:45 AM
    Author     : HP
--%>

<%@page import="function.order"%>
<jsp:useBean id="u" class="function.forder"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=order.delete(u);
out.print("<script> alert('Data Berhasil di Hapus'); window.location='../index.jsp?folder=halaman&file=tampil_order.jsp'</script>");
%>
