package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class AdminRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Registration</title>\n");
      out.write("        <style>\n");
      out.write("          \n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("               \n");
      out.write("                 <body>\n");
      out.write("                <table align=\"center\" cellpadding=\"10\"></table>\n");
      out.write("         ");

         if(request.getParameter("save")!=null)
         { 
            if(request.getParameter("adminpswd").equals(request.getParameter("repass")))
            { 
             
             String insqry="insert into tbl_admin(admin_name,admin_email,admin_password)values('"+request.getParameter("adminname")+"','"+request.getParameter("adminemail")+"','"+request.getParameter("adminpswd")+"')";
             con.executeCommand(insqry);
            
            
      out.write("\n");
      out.write("             <script type=\"text/javascript\" >\n");
      out.write("            alert(\"Upload Successfully..\");\n");
      out.write("            setTimeout(function() {\n");
      out.write("                window.location.href = 'AdminRegistration.jsp'\n");
      out.write("            }, 100);\n");
      out.write("            </script>\n");
      out.write("        ");

                }
         
               else
                 {
                     
      out.write("\n");
      out.write("        <script type=\"text/javascript\" >\n");
      out.write("            alert(\"Password mismatch..\");\n");
      out.write("            setTimeout(function() {\n");
      out.write("                window.location.href = 'AdminRegistration.jsp'\n");
      out.write("            }, 100);\n");
      out.write("        </script>\n");
      out.write("        ");

                }
         }    
         
        
      out.write("\n");
      out.write("\n");
      out.write("         <form method=\"post\">\n");
      out.write("            <table border=\"3\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" name=\"adminname\" class=\"text-box\" placeholder=\"Enter Name\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\">\n");
      out.write("                        </td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"email\" name=\"adminemail\" class=\"text-box\" placeholder=\"Enter Email-Id\" required>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"password\" name=\"adminpswd\"  class=\"text-box\" placeholder=\"Enter Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" \n");
      out.write("                               title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\">\n");
      out.write("                    </td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("            <td>Confirm Password</td>\n");
      out.write("            <td><input type=\"password\" required name=\"repass\"  class=\"text-box\" placeholder=\"Re-Enter Password\"></td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"save\" value=\"Save\">\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("         </form>        \n");
      out.write("    </body>\n");
      out.write("\n");
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
