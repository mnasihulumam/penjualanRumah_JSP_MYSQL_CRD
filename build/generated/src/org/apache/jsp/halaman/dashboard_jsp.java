package org.apache.jsp.halaman;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");


    String username = (String)session.getAttribute("username");
    // redirect user to login page if not logged in
    if(username == null){
        response.sendRedirect("../login.jsp");
    }

      out.write("\n");
      out.write("<div id=\"content\">\n");
      out.write("  <div id=\"content-header\">\n");
      out.write("  </div>\n");
      out.write("  <div class=\"container-fluid\" style=\"background: url('gambar/keandra.jpg') ;background-size: cover; ;padding: 250px;\">\n");
      out.write("    <h1 align=\"center\" style=\" font-size: 60px; opacity: 100%;  \">\n");
      out.write("        <i style=\"color: white; text-shadow: 10px 10px 20px black;\"><b>Selamat Datang ");
      out.print( username );
      out.write("</b></i>\n");
      out.write("    </h1>\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("      function date_time(id)\n");
      out.write("      {\n");
      out.write("      date = new Date;\n");
      out.write("      year = date.getFullYear();\n");
      out.write("      month = date.getMonth();\n");
      out.write("      months = new Array('Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');\n");
      out.write("      d = date.getDate();\n");
      out.write("      day = date.getDay();\n");
      out.write("      days = new Array('Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu');\n");
      out.write("      h = date.getHours();\n");
      out.write("      if(h<10)\n");
      out.write("      {\n");
      out.write("      h = \"0\"+h;\n");
      out.write("      }\n");
      out.write("      m = date.getMinutes();\n");
      out.write("      if(m<10)\n");
      out.write("      {\n");
      out.write("      m = \"0\"+m;\n");
      out.write("      }\n");
      out.write("      s = date.getSeconds();\n");
      out.write("      if(s<10)\n");
      out.write("      {\n");
      out.write("      s = \"0\"+s;\n");
      out.write("      }\n");
      out.write("      result = ''+days[day]+', '+d+' '+months[month]+' '+year+'<br> '+h+':'+m+':'+s+ ' WIB';\n");
      out.write("      document.getElementById(id).innerHTML = result;\n");
      out.write("      setTimeout('date_time(\"'+id+'\");','1000');\n");
      out.write("      return true;\n");
      out.write("      }\n");
      out.write("      </script>\n");
      out.write("\n");
      out.write("      <h1 align=\"center\" style=\"color: white; text-shadow: 10px 10px 20px black; font-weight: bold\"><i><span id=\"date_time\"><</span></i><h1>\n");
      out.write("      <script type=\"text/javascript\">window.onload = date_time('date_time');</script>\n");
      out.write("      </div>\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!--Footer-part-->");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
