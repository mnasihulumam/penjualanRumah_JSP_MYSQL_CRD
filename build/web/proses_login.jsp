<%-- 
    Document   : proses_login
    Created on : Jan 15, 2021, 2:43:47 PM
    Author     : HP
--%>

<%@page import="function.flogin"%>
<%@page import="function.login"%>
<jsp:useBean id="flogin" class="function.flogin" scope="session"/>
<jsp:setProperty property="*" name="flogin"/>
<%
   String result = login.loginCheck(flogin);
   if(result.equals("true")){
       session.setAttribute("username", flogin.getUsername());
       out.print("<script> alert('Login Sukses'); window.location='index.jsp'</script>");
       
   }
   if(result.equals("false")){
       out.print("<script> alert('Login Gagal! Periksa kembali data isian anda!'); window.location='login.jsp'</script>");
   }
   if(result.equals("error")){
       response.sendRedirect("index.jsp?status=error");
   }
   if (request.getParameter("remember") != null) {
       String remember = request.getParameter("remember");
       System.out.println("remember : " + remember);
        Cookie user = new Cookie("Username",request.getParameter("username"));
        Cookie pass = new Cookie("Password", request.getParameter("password"));
        Cookie reme = new Cookie("Remember", request.getParameter("remember"));
        // Set expiry date after 24 Hrs for both the cookies.
        user.setMaxAge(60*60*24); 
        pass.setMaxAge(60*60*24);
        reme.setMaxAge(60*60*24);
        // Add both the cookies in the response header.
        response.addCookie( user );
        response.addCookie( pass );
        response.addCookie( reme );
    }
   
%>