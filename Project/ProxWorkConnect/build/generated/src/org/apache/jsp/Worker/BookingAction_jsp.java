package org.apache.jsp.Worker;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class BookingAction_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Booking Action</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("     ");

         if(request.getParameter("aid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='1' where request_id='"+request.getParameter("aid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("rid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='2' where request_id='"+request.getParameter("rid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("tid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='3' where request_id='"+request.getParameter("tid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("fid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='4' where request_id='"+request.getParameter("fid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("nid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='5' where request_id='"+request.getParameter("nid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }    
        
      out.write("\n");
      out.write("        <div align=\"center\">\n");
      out.write("        <h2>New Bookings</h2>\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Booking From</th>\n");
      out.write("                    <th>Work Date</th>\n");
      out.write("                    <th>Work Details</th>\n");
      out.write("                    <th>Address</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Requested Date</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                 String selqry="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='0'";
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
      out.write("                         <td>");
      out.print(rs.getString("user_name"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("work_date"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("request_details"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("address"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("user_contact"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("request_date"));
      out.write("</td>\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                          <td><a href=\"BookingAction.jsp?aid=");
      out.print(rs.getString("request_id"));
      out.write("\">Accept</a>\n");
      out.write("                         |<a href=\"BookingAction.jsp?rid=");
      out.print(rs.getString("request_id"));
      out.write("\">Reject</a></td>\n");
      out.write("                     </tr>\n");
      out.write("                     ");

                 }
                     
      out.write("      \n");
      out.write("                    \n");
      out.write("            </table>\n");
      out.write("            <h2>Accepted Requests</h2>         \n");
      out.write("                <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Booking From</th>\n");
      out.write("                    <th>Work Date</th>\n");
      out.write("                    <th>Work Details</th>\n");
      out.write("                    <th>Address</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Requested Date</th>\n");
      out.write("                    <th>Status</th>\n");
      out.write("                    <th>Action</th>  \n");
      out.write("                </tr>\n");
      out.write("        ");

                 String selqry1="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='1' or w.request_status='3' or w.request_status='4'";
                 ResultSet rs1=con.selectCommand(selqry1);
                 int j=0;
                 while(rs1.next())
                 {
                     j++;
                     
      out.write("\n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(j);
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs1.getString("user_name"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs1.getString("work_date"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs1.getString("request_details"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs1.getString("address"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs1.getString("user_contact"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs1.getString("request_date"));
      out.write("</td>\n");
      out.write("                         <td>\n");
      out.write("                    ");

                    if(rs1.getString("request_status").equals("1"))
                    {
                    
      out.write("\n");
      out.write("                    <a href=\"BookingAction.jsp?tid=");
      out.print(rs1.getString("request_id"));
      out.write("\">Start work</a>\n");
      out.write("                    ");

                    }
                    if(rs1.getString("request_status").equals("3"))
                    {
                    
      out.write("\n");
      out.write("                    <a href=\"BookingAction.jsp?fid=");
      out.print(rs1.getString("request_id"));
      out.write("\">End work</a>\n");
      out.write("                    ");

                    }
                    if(rs1.getString("request_amount")==null){
                    if(rs1.getString("request_status").equals("4"))
                    {
                    
      out.write("\n");
      out.write("                    <a href=\"PayBooking.jsp?nid=");
      out.print(rs1.getString("request_id"));
      out.write("\">Pay Request</a>\n");
      out.write("                    ");

                    }
                    }
                    else
                    {
                    
      out.write("\n");
      out.write("                    Amount : ");
      out.print(rs1.getString("request_amount"));
      out.write("<br>\n");
      out.write("                   ");

                    out.println("Payment pending");   
                    }
                      
      out.write(" \n");
      out.write("                         </td>\n");
      out.write("                     <td>\n");
      out.write("                      ");

                     int a = Integer.parseInt(rs1.getString("request_status"));
                     if(a<2)
                     {
                     
      out.write("      \n");
      out.write("                         <a href=\"BookingAction.jsp?rid=");
      out.print(rs1.getString("request_id"));
      out.write("\">Reject</a>\n");
      out.write("                     ");

                     }
                     
      out.write("</td>  \n");
      out.write("                     </tr>\n");
      out.write("                     ");

                 }
                     
      out.write("       \n");
      out.write("             </table>\n");
      out.write("             <h2>Rejected Requests</h2>         \n");
      out.write("                  <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                   <th>Sl.no</th>\n");
      out.write("                    <th>Booking From</th>\n");
      out.write("                    <th>Work Date</th>\n");
      out.write("                    <th>Work Details</th>\n");
      out.write("                    <th>Address</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Requested Date</th>\n");
      out.write("                    <th>Action</th>   \n");
      out.write("                </tr>\n");
      out.write("        ");

                 String selqry2="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='2'";
                 ResultSet rs2=con.selectCommand(selqry2);
                 int k=0;
                 while(rs2.next())
                 {
                     k++;
                     
      out.write("\n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(k);
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs2.getString("user_name"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs2.getString("work_date"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs2.getString("request_details"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs2.getString("address"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs2.getString("user_contact"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs2.getString("request_date"));
      out.write("</td>\n");
      out.write("                         \n");
      out.write("                          <td><a href=\"BookingAction.jsp?aid=");
      out.print(rs2.getString("request_id"));
      out.write("\">Accept</a>\n");
      out.write("                         </td>\n");
      out.write("                     </tr>\n");
      out.write("                     ");

                 }
                     
      out.write("      \n");
      out.write("             </table>    \n");
      out.write("            \n");
      out.write("        </div>      \n");
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
