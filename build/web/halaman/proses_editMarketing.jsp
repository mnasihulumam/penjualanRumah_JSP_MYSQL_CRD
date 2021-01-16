<%-- 
    Document   : proses_editMarketing
    Created on : Jan 15, 2021, 7:23:35 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="function.marketing"%>
<jsp:useBean id="u" class="function.fmarketing"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=marketing.update(u);
if(i>0){
out.print("<script> alert('Data Berhasil di Update'); window.location='../index.jsp?folder=halaman&file=tampil_marketing.jsp'</script>");
}
else{
        out.print("<script> alert('Edit Data Gagal ! Karena daata masih terhubung dengan Data Order, Silahkan hapus terlebih dahulu data yang sama di Data Order!'); window.location='../index.jsp?folder=halaman&file=tampil_marketing.jsp'</script>");
    }
%>