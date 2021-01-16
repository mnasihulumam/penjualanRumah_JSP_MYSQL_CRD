<%-- 
    Document   : index
    Created on : Jan 14, 2021, 5:17:24 PM
    Author     : HP
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

<%
    String username = (String)session.getAttribute("username");
    // redirect user to login page if not logged in
    if(username == null){
        response.sendRedirect("login.jsp");
    }
%> 
<%@ include file="header.jsp" %>
         <%
            if (request.getParameter("folder")!=null) {
            String dataFile = request.getParameter("folder")+"/"+request.getParameter("file");
            File file = new File(request.getServletContext().getRealPath(dataFile));
            if (file.exists()) { %>
            <jsp:include page="<%=dataFile%>" />
            <% } else { %>
            <jsp:include page="halaman/dashboard.jsp" />
            <% }
            } else {
            %>
            <jsp:include page="halaman/dashboard.jsp" />
            <%
            }
            %> 
<%@ include file="footer.jsp" %>