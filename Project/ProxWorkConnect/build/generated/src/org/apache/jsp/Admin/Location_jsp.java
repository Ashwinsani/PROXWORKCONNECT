package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Location_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/Head.jsp");
    _jspx_dependants.add("/Admin/Foot.jsp");
  }

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
      out.write("        <title>Location</title>\n");
      out.write("     <style>\n");
      out.write("         .bg-img{\n");
      out.write("            background-image:url(\"../Assets/Templates/Main/images/Admin.jpg\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size:cover;\n");
      out.write("            background-position: center;\n");
      out.write("            }\n");
      out.write("             .text-box{\n");
      out.write("                background-color: transparent;\n");
      out.write("                width: 275px;\n");
      out.write("                height:50px; \n");
      out.write("                color:white;\n");
      out.write("                border-radius: 2px;\n");
      out.write("            }    \n");
      out.write("                 .fonth{\n");
      out.write("                 font-family: \"Poppins\", sans-serif;\n");
      out.write("                color: white;\n");
      out.write("                font-weight: bold; \n");
      out.write("                font-weight: italic; \n");
      out.write("                 }\n");
      out.write("                \n");
      out.write("            .fonty{\n");
      out.write("                font-family: \"Poppins\", sans-serif;\n");
      out.write("                color: #ffef19b8;\n");
      out.write("            }\n");
      out.write("            .button{\n");
      out.write("                background-color: #e0e032c2;\n");
      out.write("            }\n");
      out.write("            .fontw{\n");
      out.write("                font-family: \"Poppins\", sans-serif;\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    <div class=\"bg-img\">\n");
      out.write("        <div style=\"background-color: #000000b8 !important;\">\n");
      out.write("    ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <!-- Basic -->\n");
      out.write("  <meta charset=\"utf-8\" />\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("  <!-- Mobile Metas -->\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("  <!-- Site Metas -->\n");
      out.write("  <meta name=\"keywords\" content=\"\" />\n");
      out.write("  <meta name=\"description\" content=\"\" />\n");
      out.write("  <meta name=\"author\" content=\"\" />\n");
      out.write("  <link rel=\"shortcut icon\" href=\"../Assets/Templates/Main/images/favicon.jpg\" type=\"image/x-icon\">\n");
      out.write("  \n");
      out.write("       <title>ProxWorkConnect</title>\n");
      out.write("      \n");
      out.write("\n");
      out.write("  <!-- bootstrap core css -->\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"../Assets/Templates/Main/css/bootstrap.css\" />\n");
      out.write("\n");
      out.write("  <!-- fonts style -->\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,700|Poppins:400,600,700&display=swap\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("  <!-- Custom styles for this template -->\n");
      out.write("  <link href=\"../Assets/Templates/Main/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("  <!-- responsive style -->\n");
      out.write("  <link href=\"../Assets/Templates/Main/css/responsive.css\" rel=\"stylesheet\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("    <header class=\"header_section\">\n");
      out.write("      <div class=\"header_top\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <div class=\"contact_link-container\">\n");
      out.write("            <a href=\"\" class=\"contact_link1\">\n");
      out.write("              <i class=\"fa fa-map-marker\" aria-hidden=\"true\"> ProxWorkConnect</i>\n");
      out.write("            </a>\n");
      out.write("            <a href=\"\" class=\"contact_link2\">\n");
      out.write("              \n");
      out.write("            </a>\n");
      out.write("            <a href=\"\" class=\"contact_link3\">\n");
      out.write("              <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("              <span>\n");
      out.write("                pwc@gmail.com\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"header_bottom\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("          <nav class=\"navbar navbar-expand-lg custom_nav-container\">\n");
      out.write("            <a class=\"navbar-brand\" href=\"../Assets/Templates/Main/js/index.html\">\n");
      out.write("                \n");
      out.write("             <!--<span>\n");
      out.write("                ProxWorkConnect\n");
      out.write("              </span>-->\n");
      out.write("                \n");
      out.write("            </a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("              <span class=\"\"></span>\n");
      out.write("            </button>\n");
      out.write("             <div class=\"collapse navbar-collapse ml-auto\" id=\"navbarSupportedContent\">\n");
      out.write("              <ul class=\"navbar-nav  \">\n");
      out.write("                <li class=\"nav-item \">\n");
      out.write("                  <a class=\"nav-link\" href=\"AdminHomePage.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                </li>\n");
      out.write("                 <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("          location\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"District.jsp\">District</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"Place.jsp\">Place</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"Location.jsp\">location</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item \">\n");
      out.write("                  <a class=\"nav-link\" href=\"WorkerVerification.jsp\">verification <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                </li>\n");
      out.write("       <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("          Complaint\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"ComplaintAction.jsp\">Complaint Action</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"ViewComplaint.jsp\">View complaint</a>\n");
      out.write("          \n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"AdminChangePassword.jsp\">change password</a>\n");
      out.write("                </li>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("          </nav>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </header>\n");
      out.write("    <!-- end header section -->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

             if(request.getParameter("save")!=null)
             {
                                  
                   String insqry="insert into tbl_location(location_name,place_id)values('"+request.getParameter("locname")+"','"+request.getParameter("selpla")+"')";
                   con.executeCommand(insqry);
             }                      
                    
             if(request.getParameter("did")!=null)
            {
              String delqry="delete from tbl_location where location_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Location.jsp");
            }
         
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <br>\n");
      out.write("            <table cellpadding=\"10\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"fonty\">District</td>\n");
      out.write("                    <td><select name=\"seldis\" onchange=\"getPlace(this.value)\">\n");
      out.write("                            <option>--select district--</option>\n");
      out.write("                            ");

                            
                                String sel="select * from tbl_district";
                                ResultSet rs=con.selectCommand(sel);
                                while(rs.next())
                                {
                                    
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(rs.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                                    ");

                                    
                                }
                                    
                            
                            
      out.write("\n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td class=\"fonty\">Place</td>\n");
      out.write("                    <td><select name=\"selpla\" id=\"selplace\">\n");
      out.write("                            <option>--select place--</option>\n");
      out.write("                            \n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"fonty\">Location</td>\n");
      out.write("                    <td><input type=\"text\" name=\"locname\" placeholder=\"Enter Location\"></td>\n");
      out.write("                    <td><input type=\"hidden\" name=\"locid\"></td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\"><input type=\"submit\"  class=\"button\"name=\"save\" value=\"Save\">\n");
      out.write("                        <input type=\"reset\" name=\"cancel\"  class=\"button\" value=\"Cancel\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("                        <br><br>\n");
      out.write("        <table cellpadding=\"10\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th class=\"fontw\"> Sl.no</th>\n");
      out.write("                    <th class=\"fontw\">District</th>\n");
      out.write("                    <th class=\"fontw\">Place</th>\n");
      out.write("                    <th class=\"fontw\">Location</th>\n");
      out.write("                    <th class=\"fontw\">Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                 String selectqry="select * from tbl_location t inner join tbl_place p on p.place_id = t.place_id inner join tbl_district d on d.district_id=p.district_id ";
                 ResultSet r=con.selectCommand(selectqry);
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     
      out.write("\n");
      out.write("                     <tr>\n");
      out.write("                         <td class=\"fonty\">");
      out.print(i);
      out.write("</td>\n");
      out.write("                   <td class=\"fonty\">");
      out.print(r.getString("district_name"));
      out.write("</td> \n");
      out.write("                 <td class=\"fonty\">");
      out.print(r.getString("place_name"));
      out.write("</td> \n");
      out.write("                 <td class=\"fonty\">");
      out.print(r.getString("location_name"));
      out.write("</td> \n");
      out.write("                 <td><a href=\"Location.jsp?did=");
      out.print(r.getString("location_id"));
      out.write("\">Delete</a>\n");
      out.write("                 </td></tr>\n");
      out.write("                  ");

                 }
                  
      out.write("\n");
      out.write("        </table>\n");
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
      out.write("                        <br><br>\n");
      out.write(" ");
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
      out.write("                  <a href=\"AdminHomePage.jsp\" >\n");
      out.write("                  Home\n");
      out.write("                  </a>\n");
      out.write("                  </div>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <div>\n");
      out.write("                <a href=\"../#about\">\n");
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
      out.write("\n");
      out.write("     </div>\n");
      out.write("    </div>\n");
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
