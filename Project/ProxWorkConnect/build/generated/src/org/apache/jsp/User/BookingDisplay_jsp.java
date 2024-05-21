package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class BookingDisplay_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Booking Display</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <div align=\"center\">\n");
      out.write("        <h2>Booking Notifications</h2>\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Posts</th>\n");
      out.write("                    <th>Work Date</th>\n");
      out.write("                    <th>Work Details</th>\n");
      out.write("                    <th>Requested Date</th>\n");
      out.write("                    <th>Status</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                 String selqry="select * from tbl_workpostrequest w inner join tbl_workpost p on p.workpost_id=w.workpost_id inner join tbl_worker r on r.worker_id=p.worker_id";
                 ResultSet rs=con.selectCommand(selqry);
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
      out.write("\" height=\"90\" width=\"90\"</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("work_date"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("request_details"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("request_date"));
      out.write("</td>\n");
      out.write("                         <td>\n");
      out.write("                          ");

                              if (rs.getInt("request_status")==0)
                              {
                                out.println("Request pending");
                                }
                              else if (rs.getInt("request_status")==1)
                                {
                                 out.println("Request accepted");
                                 }
                              else if (rs.getInt("request_status")==2)
                                {
                                    out.println("Request rejected");
                                }
                               else if (rs.getInt("request_status")==3)
                                {
                                    out.println("Work started");
                                }
                               else if (rs.getInt("request_status")==4)
                                {
                                    out.println("Work completed");
                                }
                       
      out.write("   </td>\n");
      out.write("                         <td>\n");
      out.write("                             ");

                               if (rs.getInt("request_status")==0)
                                {
                                    out.println();
                                }
                               else if (rs.getInt("request_status")==2)
                                {
                                    out.println();
                                }
                               else{
                              
      out.write("\n");
      out.write("                              Contact : ");
      out.print(rs.getString("worker_contact"));
      out.write("<br>\n");
      out.write("                              ");

                               }
                              if(rs.getInt("request_status")==4)
                              {
                               int worker_amt=Integer.parseInt(rs.getString("request_amount"));
                               int perc=(worker_amt/100)*10;
                               int total=worker_amt+perc;
                              
      out.write("  \n");
      out.write("                              \n");
      out.write("                              Amount : ");
out.println(total);
      out.write("<br>\n");
      out.write("                              Remarks : ");
      out.print(rs.getString("request_remarks"));
      out.write("<br>\n");
      out.write("                                <a href=\"Payment.jsp\">Pay Now</a> \n");
      out.write("                             ");

                                 }
                              
      out.write("\n");
      out.write("                         </td>\n");
      out.write("                     </tr>\n");
      out.write("                     ");

                 }
                     
      out.write("      \n");
      out.write("                    \n");
      out.write("            </table>\n");
      out.write("          </div>\n");
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
