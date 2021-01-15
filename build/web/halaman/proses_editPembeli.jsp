<%-- 
    Document   : proses_editPembeli
    Created on : Jan 15, 2021, 2:05:24 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.pembeli"%>
<jsp:useBean id="u" class="function.fpembeli"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=pembeli.update(u);
if(i>0){
out.print("<script> alert('Data Berhasil di Update'); window.location='../index.jsp?folder=halaman&file=tampil_pembeli.jsp'</script>");
}
else{
        out.print("<script> alert('Edit Data Gagal ! Periksa Kembali!'); window.location='../index.jsp?folder=halaman&file=tampil_pembeli.jsp'</script>");
    }
%>