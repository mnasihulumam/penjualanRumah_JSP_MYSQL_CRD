package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/halaman/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"bootstrap/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"bootstrap/css/admin.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"fontawesome-free/css/all.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"Jquery/jquery.dataTables.css\">\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"Jquery/jquery.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" charset=\"utf8\" src=\"Jquery/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("        $(document).ready(function() {\n");
      out.write("            $('#datatable').DataTable();\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <title>Keandra | Dashboard</title>\n");
      out.write("  </head>\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-light bg-warning fixed-top\">\n");
      out.write("    <a class=\"navbar-brand\" href=\"#\">PENJUALAN RUMAH | KEANDRA</a>\n");
      out.write("      <div class=\"form-inline my-2 my-lg-0 ml-auto\">\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("      <div class=\"icon ml-4\">\n");
      out.write("        <h5>\n");
      out.write("        <a href=\"logout.jsp\" style=\"color: black;\" onclick=\"return confirm('Anda yakin mau Logout?')\"><i class=\"fas fa-sign-out-alt mr-3\" data-toggle=\"tooltip\" title=\"Sign Out\" ></i></a>\n");
      out.write("        </h5>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </nav>\n");
      out.write("\n");
      out.write("  <div class=\"row no-gutters mt-5\" id=\"menu\"> \n");
      out.write("      <div class=\"col-md-2 bg-dark mt-2 pr-3 pt-4\">\n");
      out.write("        <ul class=\"nav flex-column ml-3 mb-5\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-white\" href=\"index.jsp\"><i class=\"fas fa-tachometer-alt mr-2\"></i> Dashboard</a> <hr class=\"bg-secondary\"></hr>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-white\" href=\"index.jsp?folder=halaman&file=tampil_barang.jsp\"><i class=\"fas fa-home mr-2\"></i> Data Rumah</a><hr class=\"bg-secondary\"></hr>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-white\" href=\"index.jsp?folder=halaman&file=tampil_pegawai.jsp\"><i class=\"fas fa-user-tie mr-2\"></i> Data Pembeli</a><hr class=\"bg-secondary\"></hr>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link text-white\" href=\"index.jsp?folder=halaman&file=tampil_pegawai.jsp\"><i class=\"fas fa-dolly-flatbed mr-2\"></i> Data Order</a><hr class=\"bg-secondary\"></hr>\n");
      out.write("        </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"col-md-10\" id=\"konten\">\n");
      out.write("         ");

            if (request.getParameter("folder")!=null) {
            String dataFile = request.getParameter("folder")+"/"+request.getParameter("file");
            File file = new File(request.getServletContext().getRealPath(dataFile));
            if (file.exists()) { 
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, dataFile, out, false);
      out.write("\n");
      out.write("            ");
 } else { 
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "halaman/dashboard.jsp", out, false);
      out.write("\n");
      out.write("            ");
 }
            } else {
            
      out.write("\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "halaman/dashboard.jsp", out, false);
      out.write("\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("  </div>   \n");
      out.write("  ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<footer class=\"bg-dark text-white\">\n");
      out.write("    <p align=\"center\">All Rights Reserved by M. Nasihul Umam &copy 2020</p>\n");
      out.write("</footer>");
      out.write("\n");
      out.write("    <!-- Optional JavaScript -->\n");
      out.write("    <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("    <script src=\"bootstrap/js/jquery-3.3.1.slim.min.js\" ></script>\n");
      out.write("    <script src=\"bootstrap/js/popper.min.js\"></script>\n");
      out.write("    <script src=\"bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"bootstrap/js/admin.js\"></script>\n");
      out.write("  </body>\n");
      out.write("</html>");
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
