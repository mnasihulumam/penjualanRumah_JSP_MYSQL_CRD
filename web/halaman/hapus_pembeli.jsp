<%-- 
    Document   : hapus_pembeli
    Created on : Jan 15, 2021, 1:11:56 AM
    Author     : HP
--%>

<%@page import="function.pembeli"%>
<jsp:useBean id="u" class="function.fpembeli"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=pembeli.delete(u);
out.print("<script> alert('Data Berhasil di Hapus'); window.location='../index.jsp?folder=halaman&file=tampil_pembeli.jsp'</script>");
%>