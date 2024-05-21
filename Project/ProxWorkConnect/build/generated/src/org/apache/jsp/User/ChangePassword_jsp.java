package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ChangePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Password</title>\n");
      out.write("    </head>\n");
      out.write("    ");
  
        
       String currentpsswd=request.getParameter("txtpsswd");
       String newpsswd = request.getParameter("txtnpsswd");
       String repsswd = request.getParameter("txtrpsswd");
       String pass ="";
       String sq = "select*from tbl_user where user_id ='"+session.getAttribute("uid")+"'";
       ResultSet rs = con.selectCommand(sq);
       rs.next();
       pass = rs.getString("user_password");
       if(request.getParameter("txtupdate")!=null)
       {      
        if(pass.equals(currentpsswd))
        {
            if(newpsswd.equals(repsswd))
            {
                String uq = "update tbl_user set user_password = '"+request.getParameter("txtnpsswd")+"'where user_id = '"+session.getAttribute("uid")+"'";
                con.executeCommand(uq);
              
      out.write("\n");
      out.write("               <script>\n");
      out.write("                        alert(\"Password Changed\");\n");
      out.write("                        window.location=\"../Guest/login.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                ");

            }
            else
            {
                
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                        alert(\"New password Mismatched\");\n");
      out.write("                        window.location=\"ChangePassword.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                ");

            }
        }
        else
        {
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Current Password Mismatched\");\n");
      out.write("                window.location=\"Change Password.jsp\";\n");
      out.write("            </script>\n");
      out.write("            ");

        }
       }
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\">    \n");
      out.write("    <table border=\"3\" align=\"center\">   \n");
      out.write("    <tr>\n");
      out.write("        <td>Current Password</td>\n");
      out.write("        <td><input type=\"password\" name=\"txtpsswd\" placeholder=\"Enter Current Password\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" required></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td>New Password</td>\n");
      out.write("        <td><input type=\"password\" name=\"txtnpsswd\" placeholder=\"Enter New Password\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" required></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td>Re-Password</td>\n");
      out.write("        <td><input type=\"password\" name=\"txtrpsswd\" placeholder=\"ReEnter Password\" required></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr>\n");
      out.write("        <td align=\"center\" colspan=\"2\">\n");
      out.write("         <input type=\"submit\" name=\"txtupdate\" value=\"Update\">\n");
      out.write("        </td>\n");
      out.write("    </tr>\n");
      out.write("    </table>\n");
      out.write("        </form>\n");
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
