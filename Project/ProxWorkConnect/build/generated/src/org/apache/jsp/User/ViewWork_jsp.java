package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ViewWork_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Uploaded Works</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div align=\"center\">\n");
      out.write("        <h2>Uploaded Works</h2>\n");
      out.write("         \n");
      out.write("        <form method=\"post\">\n");
      out.write("        <table border=\"3\" align=\"center\">\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Photo</th>\n");
      out.write("                    <th>Details</th>\n");
      out.write("                    <th>Duration</th>\n");
      out.write("                    <th>Posted Date</th>\n");
      out.write("         \n");
      out.write("                    <th>Image Gallery</th>\n");
      out.write("                </tr>\n");
      out.write("        ");

                 String selqry = "select*from tbl_workpost where worker_id='"+request.getParameter("sid")+"'"; 
                 
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     
      out.write("\n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                         <td><img src=\"../Assets/Files/WorkPostPhoto/");
      out.print(rs.getString("workpost_image"));
      out.write("\" height=\"70\" width=\"70\"</td></td>\n");
      out.write("                          <td>");
      out.print(rs.getString("workpost_details"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("workpost_duration"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("workpost_date"));
      out.write("</td>\n");
      out.write("                         \n");
      out.write("                         <td><a href=\"ViewWorkGallery.jsp?sid=");
      out.print(rs.getString("workpost_id"));
      out.write(" \">View Gallery</a></td>\n");
      out.write("                     </tr>\n");
      out.write("                     ");

                 }
                     
      out.write("      \n");
      out.write("             </table>\n");
      out.write("        </form>\n");
      out.write("             </div>        \n");
      out.write("         \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
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