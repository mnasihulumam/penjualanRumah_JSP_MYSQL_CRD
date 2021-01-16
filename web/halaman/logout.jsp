<%-- 
    Document   : logout
    Created on : Jan 15, 2021, 2:48:56 PM
    Author     : HP
--%>

<%
session.invalidate();
response.sendRedirect("../login.jsp");
%>