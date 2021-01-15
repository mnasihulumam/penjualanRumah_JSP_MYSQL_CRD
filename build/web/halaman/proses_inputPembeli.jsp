<%-- 
    Document   : proses_inputPembeli
    Created on : Jan 15, 2021, 1:52:15 AM
    Author     : HP
--%>

<%@page import="function.pembeli"%>
<jsp:useBean id="u" class="function.fpembeli"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=pembeli.save(u);
    if(i>0){
       out.print("<script> alert('Input Data Berhasil'); window.location='../index.jsp?folder=halaman&file=tampil_pembeli.jsp'</script>");
    }
    else{
        out.print("<script> alert('Input Data Gagal ! Periksa Kembali!'); window.location='../index.jsp?folder=halaman&file=tambah_pembeli.jsp'</script>");
    }
%>
