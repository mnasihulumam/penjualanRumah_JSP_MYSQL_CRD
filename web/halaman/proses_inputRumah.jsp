<%-- 
    Document   : proses_inputRumah
    Created on : Jan 14, 2021, 11:14:43 PM
    Author     : HP
--%>

<%@page import="function.rumah"%>
<jsp:useBean id="u" class="function.frumah"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=rumah.save(u);
    if(i>0){
       out.print("<script> alert('Input Data Berhasil'); window.location='../index.jsp?folder=halaman&file=tampil_rumah.jsp'</script>");
    }
    else{
        out.print("<script> alert('Input Data Gagal ! Periksa Kembali!'); window.location='../index.jsp?folder=halaman&file=tambah_rumah.jsp'</script>");
    }
%>