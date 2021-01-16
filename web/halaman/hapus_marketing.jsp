<%-- 
    Document   : hapus_marketing
    Created on : Jan 15, 2021, 7:22:38 AM
    Author     : HP
--%>

<%@page import="function.marketing"%>
<jsp:useBean id="u" class="function.fmarketing"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
int i=marketing.delete(u);
if(i>0){
out.print("<script> alert('Data Berhasil di Hapus'); window.location='../index.jsp?folder=halaman&file=tampil_marketing.jsp'</script>");
}
else{
        out.print("<script> alert('Hapus Data Gagal ! Karena daata masih terhubung dengan Data Order, Silahkan hapus terlebih dahulu data yang sama di Data Order!'); window.location='../index.jsp?folder=halaman&file=tampil_marketing.jsp'</script>");
    }
%>