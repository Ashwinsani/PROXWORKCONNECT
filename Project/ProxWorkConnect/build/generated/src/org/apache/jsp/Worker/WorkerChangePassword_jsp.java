package org.apache.jsp.Worker;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class WorkerChangePassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Worker Edit Profile</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

          if(request.getParameter("update")!=null) 
           {
                    String upqry = "update tbl_worker set worker_name = '"+request.getParameter("name")+"',worker_contact = '"+request.getParameter("contact")+"',worker_email = '"+request.getParameter("email")+"',worker_address = '"+request.getParameter("address")+"'where worker_id = '"+session.getAttribute("wid")+"'";
                    con.executeCommand(upqry);
                    response.sendRedirect("WorkerEditProfile.jsp");    
            } 
             String editname="";
             String editcontact="";
             String editemail="";
             String editaddress="";
             
            String sel = "select*from tbl_worker where worker_id ='"+session.getAttribute("wid")+"'";
            ResultSet rs1 = con.selectCommand(sel);
            rs1.next();
            editname = rs1.getString("worker_name");
            editcontact = rs1.getString("worker_contact");
            editemail = rs1.getString("worker_email");
            editaddress = rs1.getString("worker_address");
                        
        
      out.write("\n");
      out.write("             \n");
      out.write("        <form method=\"post\">\n");
      out.write("        <table border=\"3\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" name=\"name\"  value=\"");
      out.print(editname);
      out.write("\" placeholder=\"Enter Name\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" name=\"contact\" value=\"");
      out.print(editcontact);
      out.write("\"  placeholder=\"Enter Contact No\" title=\"Phone number with 7-9 and remaining 9 digit with 0-9\" pattern=\"[7-9]{1}[0-9]{9}\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"email\" name=\"email\" value=\"");
      out.print(editemail);
      out.write("\" placeholder=\"Enter Email-Id\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 <tr><td>Address</td>\n");
      out.write("                     <td><textarea name=\"address\" rows=\"3\" cols=\"20\" required>");
      out.print(editaddress);
      out.write("\"</textarea>\n");
      out.write("                 </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"update\" value=\"Update\">\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("        </table>\n");
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
