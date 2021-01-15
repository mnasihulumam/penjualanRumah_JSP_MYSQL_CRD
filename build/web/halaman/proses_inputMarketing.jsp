<%-- 
    Document   : proses_inputMarketing
    Created on : Jan 15, 2021, 7:23:18 AM
    Author     : HP
--%>

<%@page import="function.marketing"%>
<jsp:useBean id="u" class="function.fmarketing"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i=marketing.save(u);
    if(i>0){
       out.print("<script> alert('Input Data Berhasil'); window.location='../index.jsp?folder=halaman&file=tampil_marketing.jsp'</script>");
    }
    else{
        out.print("<script> alert('Input Data Gagal ! Periksa Kembali!'); window.location='../index.jsp?folder=halaman&file=tambah_marketing.jsp'</script>");
    }
%>
