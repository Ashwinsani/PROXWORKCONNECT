package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class WorkerRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Guest/Head.jsp");
    _jspx_dependants.add("/Guest/Foot.jsp");
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
      out.write("        <title>Worker Registration</title>\n");
      out.write("          <style>\n");
      out.write("        .bg-img{\n");
      out.write("            background-image:url(\"../Assets/Templates/Main/images/worker.jpg\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size:cover;\n");
      out.write("            background-position: center;\n");
      out.write("            }\n");
      out.write("            .text-box{\n");
      out.write("                background-color: transparent;\n");
      out.write("                width: 275px;\n");
      out.write("                height:50px; \n");
      out.write("                color:grey;\n");
      out.write("            }    \n");
      out.write("            .font{\n");
      out.write("                font-family: \"Poppins\", sans-serif;\n");
      out.write("                color: #ffef19b8; \n");
      out.write("            }\n");
      out.write("            .button{\n");
      out.write("                background-color: #e0e032c2;\n");
      out.write("            }\n");
      out.write("        </style>                \n");
      out.write("    </head>\n");
      out.write("    <div class=\"bg-img\">\n");
      out.write("            <div style=\"background-color: #000000b8 !important;\">\n");
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
      out.write("              <i class=\"fa fa-map-marker\" aria-hidden=\"true\"></i>\n");
      out.write("            </a>\n");
      out.write("            <a href=\"\" class=\"contact_link2\">\n");
      out.write("              <i class=\"fa fa-phone\" aria-hidden=\"true\"></i>\n");
      out.write("              <span>\n");
      out.write("                Call : +01 1234567890\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("            <a href=\"\" class=\"contact_link3\">\n");
      out.write("              <i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("              <span>\n");
      out.write("                demo@gmail.com\n");
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
      out.write("              <span>\n");
      out.write("                ProxWorkConnect\n");
      out.write("              </span>\n");
      out.write("                \n");
      out.write("            </a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("              <span class=\"\"></span>\n");
      out.write("            </button>\n");
      out.write("             <div class=\"collapse navbar-collapse ml-auto\" id=\"navbarSupportedContent\">\n");
      out.write("              <ul class=\"navbar-nav  \">\n");
      out.write("                <li class=\"nav-item \">\n");
      out.write("                  <a class=\"nav-link\" href=\"../index.html\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"../Guest/userregistration.jsp\">User Sign Up</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"../Guest/WorkerRegistration.jsp\">Labour Sign Up</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"#cont\">Contact Us</a>\n");
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
      out.write("    <body>\n");
      out.write("        <div class=\"font\">\n");
      out.write("        <form method=\"post\" enctype=\"multipart/form-data\" action=\"../Assets/ActionPages/WorkerUploadAction.jsp\">\n");
      out.write("            <br><br><br>\n");
      out.write("            <table cellpadding=\"15\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" class=\"text-box\" name=\"name\" placeholder=\"Enter Name\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  class=\"text-box\" required type=\"text\" name=\"contact\" placeholder=\"Enter Contact No\" pattern=\"[7-9]{1}[0-9]{9}\" \n");
      out.write("                title=\"Phone number with 7-9 and remaing 9 digit with 0-9\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>   \n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"email\" class=\"text-box\" required name=\"email\" placeholder=\"Enter Email-Id\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                 <tr><td>Address</td>\n");
      out.write("                     <td><textarea name=\"address\" class=\"text-box\" rows=\"3\" cols=\"10\" required></textarea>\n");
      out.write("                 </tr>\n");
      out.write("                    \n");
      out.write("                 <tr>\n");
      out.write("                    <td>Photo</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <input  required type=\"file\" name=\"photo\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Proof</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"file\" name=\"proof\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>DOB</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required class=\"text-box\"  type=\"text\" name=\"dob\"placeholder=\"Enter DateOfBirth\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" class=\"text-box\"  name=\"psswd\" placeholder=\"Enter Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" required >\n");
      out.write("                    </td>\n");
      out.write("                </tr> \n");
      out.write("                 <tr>\n");
      out.write("                    <td>Confirm Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" class=\"text-box\" name=\"repass\" placeholder=\"Re-enter Password\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddis\" class=\"text-box\" onchange=\"getPlace(this.value)\">\n");
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
      out.write("                        <select name=\"ddlplace\" class=\"text-box\" id=\"selplace\">\n");
      out.write("                            <option>--select--</option>\n");
      out.write("                            \n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Worker Type</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddltype\" class=\"text-box\">\n");
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
      out.write("                        <input type=\"submit\" name=\"save\" value=\"Save\" class=\"button\">\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" value=\"Cancel\"class=\"button\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
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
      out.write("                        <br><br><br><br><br><br><br><br><br>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
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
      out.write("                  <a href=\"#home\" >\n");
      out.write("                  Home\n");
      out.write("                  </a>\n");
      out.write("                  </div>\n");
      out.write("              </li>\n");
      out.write("              <li>\n");
      out.write("                <div>\n");
      out.write("                <a href=\"#about\">\n");
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
