package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Searchworker_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Searchworker</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\">\n");
      out.write("        <table border=\"3\" align=\"center\">\n");
      out.write("         <tr>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddldis\" onchange=\"getPlace(this.value)\" required>\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                            ");

                              String selqry1="select * from tbl_district";
                              ResultSet rs1=con.selectCommand(selqry1);
                              while(rs1.next())
                              {
                              
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs1.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("district_name"));
      out.write("</option>\n");
      out.write("                            ");

                              }
                            
      out.write("\n");
      out.write("                            \n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Place</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlplace\" id=\"selplace\" required>\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                            \n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Worker Type</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddltype\" required>\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                            ");

                              String selqry2="select * from tbl_workertype";
                              ResultSet rs2=con.selectCommand(selqry2);
                              while(rs2.next())
                              {
                              
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs2.getString("workertype_id"));
      out.write('"');
      out.write('>');
      out.print(rs2.getString("workertype_name"));
      out.write("</option>\n");
      out.write("                            ");

                              }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"search\" value=\"Search\">\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("        </table><br>\n");
      out.write("                <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Workertype</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Works</th>\n");
      out.write("                    <th>Request</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                  if(request.getParameter("search")!=null){
                 String selectqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_district d on d.district_id=p.district_id where p.place_id='"+request.getParameter("ddlplace")+"' and t.workertype_id='"+request.getParameter("ddltype")+"'";
                 ResultSet r=con.selectCommand(selectqry);
                
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     
      out.write("\n");
      out.write("                     <tr>\n");
      out.write("                         <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                   <td>");
      out.print(r.getString("worker_name"));
      out.write("</td> \n");
      out.write("                 <td>");
      out.print(r.getString("workertype_name"));
      out.write("</td> \n");
      out.write("                 <td>");
      out.print(r.getString("worker_contact"));
      out.write("</td> \n");
      out.write("                 \n");
      out.write("                 <td><a href=\"ViewWork.jsp?sid=");
      out.print(r.getString("worker_id"));
      out.write(" \">View Works</a>\n");
      out.write("                 <td><a href=\"Request.jsp?eid=");
      out.print(r.getString("worker_id"));
      out.write("\">Request Now</a>\n");
      out.write("                 </tr>\n");
      out.write("                  ");

                 }
                  }
                  
      out.write("\n");
      out.write("        </table>        \n");
      out.write("    </form>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/JQuery/jQuery.js\"></script>         \n");
      out.write("                            <script>\n");
      out.write("                              function getPlace(did)\n");
      out.write("                            {\n");
      out.write("                              \n");
      out.write("                           //  alert(did);  \n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/AjaxPlaces.jsp?pid=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                    $(\"#selplace\").html(result);\n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
      out.write("                           \n");
      out.write("                        </script>\n");
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
