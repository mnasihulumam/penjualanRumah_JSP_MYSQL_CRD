<%-- 
    Document   : hapus_rumah
    Created on : Jan 15, 2021, 12:28:50 AM
    Author     : HP
--%>

<%@page import="java.sql.*" %> 


<%@page import="function.rumah"%>
<jsp:useBean id="u" class="function.frumah"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=rumah.delete(u);
out.print("<script> alert('Data Berhasil di Hapus'); window.location='../index.jsp?folder=halaman&file=tampil_rumah.jsp'</script>");
%>