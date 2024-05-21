package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Foot_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!-- info section -->\n");
      out.write("  <section class=\"info_section \">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-md-3\" style=\"margin-left: 50px\">\n");
      out.write("          <div class=\"info_logo\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"../Assets/Templates/Main/js/index.html\">\n");
      out.write("              <span>\n");
      out.write("                ProxWorkConnect\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("            <p>\n");
      out.write("              Streamline your hiring process and find the perfect workers for your needs with ease!\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-3\" style=\"margin-left: 120px\">\n");
      out.write("          <div class=\"info_links\">\n");
      out.write("            <h5>\n");
      out.write("              Useful Link\n");
      out.write("            </h5>\n");
      out.write("            <ul>\n");
      out.write("              <li>\n");
      out.write("                  <div>\n");
      out.write("                  <a href=\"#home\" >\n");
      out.write("                  Home\n");
      out.write("                  </a>\n");
      out.write("                  </div>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <div>\n");
      out.write("                <a href=\"#about\">\n");
      out.write("                  About us\n");
      out.write("                </a>\n");
      out.write("                </div>\n");
      out.write("              </li>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("            </ul>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-3\" style=\"margin-left: 100px\" id=\"cont\">\n");
      out.write("          <div class=\"info_info\">\n");
      out.write("            <h5>\n");
      out.write("              Contact Us\n");
      out.write("            </h5>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"info_contact\">\n");
      out.write("            <a href=\"\" class=\"\">\n");
      out.write("              <i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>\n");
      out.write("              <span>\n");
      out.write("                Muvattupuzha,Ernakulam,\n");
      out.write("                Kerala,India\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("            <a href=\"\" class=\"\">\n");
      out.write("              <i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n");
      out.write("              <span>\n");
      out.write("                Call : 7836475337\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("            <a href=\"\" class=\"\">\n");
      out.write("              <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("              <span>\n");
      out.write("                pwc@gmail.com\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </section>\n");
      out.write("\n");
      out.write("  <!-- end info_section -->\n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("  <!-- footer section -->\n");
      out.write("  <footer class=\"container-fluid footer_section\">\n");
      out.write("   \n");
      out.write("  </footer>\n");
      out.write("  <!-- footer section -->\n");
      out.write("\n");
      out.write("  <script src=\"../Assets/Templates/Main/js/jquery-3.4.1.min.js\"></script>\n");
      out.write("  <script src=\"../Assets/Templates/Main/js/bootstrap.js\"></script>\n");
      out.write("  <script src=\"../Assets/Templates/Main/js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
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
