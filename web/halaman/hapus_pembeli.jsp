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
if(i>0){
out.print("<script> alert('Data Berhasil di Hapus'); window.location='../index.jsp?folder=halaman&file=tampil_pembeli.jsp'</script>");
}
else{
        out.print("<script> alert('Hapus Data Gagal ! Karena daata masih terhubung dengan Data Order, Silahkan hapus terlebih dahulu data yang sama di Data Order!'); window.location='../index.jsp?folder=halaman&file=tampil_pembeli.jsp'</script>");
    }
%>