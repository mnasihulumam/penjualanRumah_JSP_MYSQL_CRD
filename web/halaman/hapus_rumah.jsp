<%-- 
    Document   : hapus_rumah
    Created on : Jan 15, 2021, 12:33:39 AM
    Author     : HP
--%>

<%@page import="function.rumah"%>
<jsp:useBean id="u" class="function.frumah"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=rumah.delete(u);
if(i>0){
out.print("<script> alert('Data Berhasil di Hapus'); window.location='../index.jsp?folder=halaman&file=tampil_rumah.jsp'</script>");
}
else{
        out.print("<script> alert('Hapus Data Gagal ! Karena daata masih terhubung dengan Data Order, Silahkan hapus terlebih dahulu data yang sama di Data Order!'); window.location='../index.jsp?folder=halaman&file=tampil_rumah.jsp'</script>");
    }
%>