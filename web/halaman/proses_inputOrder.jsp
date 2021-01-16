<%-- 
    Document   : proses_inputOrder
    Created on : Jan 15, 2021, 8:00:19 AM
    Author     : HP
--%>

<%@page import="function.order"%>
<jsp:useBean id="u" class="function.forder"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=order.save(u);
    if(i>0){
       out.print("<script> alert('Input Data Berhasil'); window.location='../index.jsp?folder=halaman&file=tampil_order.jsp'</script>");
    }
    else{
        out.print("<script> alert('Input Data Gagal ! Periksa Kembali!'); window.location='../index.jsp?folder=halaman&file=tambah_order.jsp'</script>");
    }
%>

