package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Location_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Location</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      ");

       if(request.getParameter("btnsave") != null)  
       {
            String insqry = "insert into tbl_location(location_name,place_id)values('"+request.getParameter("txtloc")+"','"+request.getParameter("selpla")+"')";
            con.executeCommand(insqry);
       }
       if (request.getParameter("did") != null) {
                String delqry = "delete from tbl_location where location_id='" + request.getParameter("did") + "'";
                con.executeCommand(delqry);
                response.sendRedirect("Location.jsp");
       }
        
      out.write("\n");
      out.write("       <form method=\"post\">\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddist\" onchange=\"getPlace(this.value)\">\n");
      out.write("                            <option>---select district---</option>\n");
      out.write("                                     ");

                        String selqry="select * from tbl_district";
                        ResultSet rs=con.selectCommand(selqry);
                        while(rs.next())
                        {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                              ");

                        }
                        
      out.write("                        \n");
      out.write("                               \n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                <tr>\n");
      out.write("                    <td>place</td>\n");
      out.write("                    <td>\n");
      out.write("                <select name=\"selpla\" id=\"selplace\">\n");
      out.write("                    <option>--select place--</option>\n");
      out.write("                    \n");
      out.write("                </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                     <td><input type=\"text\" name=\"txtloc\"></td>\n");
      out.write("                     <td><input type='hidden' name='locationid'></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"btnsave\" value=\"Save\">\n");
      out.write("                        <input  type=\"reset\" name=\"btnc\" value=\"Cancel\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table><br>\n");
      out.write("                <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>SL.no</th>\n");
      out.write("                    <th>District name</th>\n");
      out.write("                    <th>place</th>\n");
      out.write("                    <th>Location</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    String selectqry = "select * from tbl_location l inner join tbl_place p on p.place_id=l.place_id inner join tbl_district d on d.district_id=p.district_id";
                    ResultSet r2 = con.selectCommand(selectqry);
                    int i=0;
                    while(r2.next())
                    {
                        i++;
                    
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r2.getString("district_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r2.getString("place_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(r2.getString("location_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"Location.jsp?did=");
      out.print(r2.getString("location_id"));
      out.write("\">\n");
      out.write("                            Delete</a></td>\n");
      out.write("               \n");
      out.write("                            \n");
      out.write("                     </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("    \n");
      out.write("       </form>\n");
      out.write("                        </body>\n");
      out.write("                        <script src=\"../Assets/JQuery/jQuery.js\"></script>         \n");
      out.write("                            <script>\n");
      out.write("                              function getPlace(did)\n");
      out.write("                            {\n");
      out.write("                              \n");
      out.write("                           // alert(did);  \n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/AjaxPlaces.jsp?pid=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                    //alert(result);\n");
      out.write("                                    $(\"#selplace\").html(result);\n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
      out.write("                           \n");
      out.write("                        \n");
      out.write("            \n");
      out.write("                            </script>\n");
      out.write("                            \n");
      out.write("    \n");
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
