package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("<!DOCTYPE html>                                                                                                     \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (request.getParameter("btn_login") != null) {
                String email=request.getParameter("txtemail");
                String password=request.getParameter("txtpsswrd");
                String selqry="select * from tbl_user where user_email='"+email+"' and user_password='"+password+"'";
                ResultSet rsu=con.selectCommand(selqry);
                String wrkqry="select * from tbl_worker where worker_email='"+email+"' and worker_password='"+password+"'";
                ResultSet rsw=con.selectCommand(wrkqry);
                String admqry="select * from tbl_admin where admin_email='"+email+"' and admin_password='"+password+"'";
                ResultSet rsAd=con.selectCommand(admqry);
                
                if(rsu.next())
                    
                {
                    session.setAttribute("uid",rsu.getString("user_id"));
                    session.setAttribute("uname",rsu.getString("user_name"));
                    response.sendRedirect("../User/HomePageUser.jsp");
                }
                
                else if(rsw.next())
                    
                {
                    session.setAttribute("wid",rsw.getString("worker_id"));
                    session.setAttribute("wname",rsw.getString("worker_name"));
                    response.sendRedirect("../Worker/Homepagew.jsp");
                }
                 else if(rsAd.next())
                    
                {
                    session.setAttribute("adid",rsAd.getString("admin_id"));
                    session.setAttribute("adname",rsAd.getString("admin_name"));
                    response.sendRedirect("../Admin/AdminHomepage.jsp");
                }
            }
        
        
      out.write("\n");
      out.write("        <form method=\"Post\">\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td><input type=\"text\" name=\"txtemail\"  placeholder=\"Enter Email-Id\"</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"txtpsswrd\"  placeholder=\"Enter Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" required</td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\"><input  type=\"submit\" name=\"btn_login\" value=\"login\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
