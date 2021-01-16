<%-- 
    Document   : proses_register
    Created on : Jan 16, 2021, 10:04:21 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String nama_user = request.getParameter("nama_user");
    String username =  request.getParameter("username");
    String password =  request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_keandra","root","");
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into user (nama_user, username, password) values ('" + nama_user + "', '" + username + "', '" + password + "')");
    if (i>0){
        out.print("<script> alert('Register Sukses'); window.location='login.jsp'</script>");
    }
       else{
        out.print("<script> alert('Register Gagal ! Periksa Kembali!'); window.location='login.jsp'</script>");
       }
        
            
            
%>