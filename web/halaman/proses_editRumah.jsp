<%-- 
    Document   : proses_editRumah
    Created on : Jan 14, 2021, 11:49:45 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.rumah"%>
<jsp:useBean id="u" class="function.frumah"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=rumah.update(u);
if(i>0){
out.print("<script> alert('Data Berhasil di Update'); window.location='../index.jsp?folder=halaman&file=tampil_rumah.jsp'</script>");
}
else{
        out.print("<script> alert('Edit Data Gagal ! Karena daata masih terhubung dengan Data Order, Silahkan hapus terlebih dahulu data yang sama di Data Order!'); window.location='../index.jsp?folder=halaman&file=tampil_rumah.jsp'</script>");
    }
%>
