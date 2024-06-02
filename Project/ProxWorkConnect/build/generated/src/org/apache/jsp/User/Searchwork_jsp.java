package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class SearchWork_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/User/Head.jsp");
    _jspx_dependants.add("/User/Foot.jsp");
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
      out.write("        <title>Searchwork</title>\n");
      out.write("        <style>\n");
      out.write("        .fa-heart {\n");
      out.write("            font-size: 20px;\n");
      out.write("            margin-left: -76px;\n");
      out.write("            margin-right: 55px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("        .red {\n");
      out.write("            color: red;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <script>\n");
      out.write("        function toggleHeartColor(element) {\n");
      out.write("            element.classList.toggle('red');\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css\" integrity=\"sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("        <style>\n");
      out.write("            .cont {\n");
      out.write("                    display: flex;\n");
      out.write("                    width: 200px;\n");
      out.write("                    justify-content: space-between;\n");
      out.write("            }\n");
      out.write("            .sub {\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-direction: column;\n");
      out.write("                    justify-content: center;\n");
      out.write("                    align-items: center;\n");
      out.write("                    gap: 7px;\n");
      out.write("                    padding: 22px;\n");
      out.write("                    background-color: #65720866;\n");
      out.write("                    border-radius: 17px;\n");
      out.write("            }\n");
      out.write("            .main {\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-wrap: wrap;\n");
      out.write("                    justify-content: center;\n");
      out.write("                    align-items: center;\n");
      out.write("                    gap: 2rem;\n");
      out.write("            }\n");
      out.write("              .bg-img{\n");
      out.write("            background-image:url(\"../Assets/Templates/Main/images/userhome1.jpg\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size:cover;\n");
      out.write("            background-position: center;\n");
      out.write("            }\n");
      out.write("             .text-box{\n");
      out.write("                background-color: transparent;\n");
      out.write("                width: 275px;\n");
      out.write("                height:50px; \n");
      out.write("                color:white;\n");
      out.write("               border-radius: 2px;\n");
      out.write("             }\n");
      out.write("                \n");
      out.write("            .font{\n");
      out.write("                font-family: \"Poppins\", sans-serif;\n");
      out.write("                color: #ffef19b8;\n");
      out.write("            }\n");
      out.write("            .button{\n");
      out.write("                background-color: #e0e032c2;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
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
      out.write("\n");
      out.write("  <title>ProxWorkConnect</title>\n");
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
      out.write("           \n");
      out.write("              <span>\n");
      out.write("               \n");
      out.write("              </span>\n");
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
      out.write("            <a class=\"navbar-brand\" href=\"../index.html\">\n");
      out.write("           <!--   <span>\n");
      out.write("                ProxWorkConnect\n");
      out.write("              </span>-->\n");
      out.write("            </a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("              <span class=\"\"></span>\n");
      out.write("            </button>\n");
      out.write("             <div class=\"collapse navbar-collapse ml-auto\" id=\"navbarSupportedContent\">\n");
      out.write("              <ul class=\"navbar-nav  \">\n");
      out.write("                <li class=\"nav-item \">\n");
      out.write("                  <a class=\"nav-link\" href=\"UserHomePage.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                </li>\n");
      out.write("                 <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("         Profile\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"UserProfile.jsp\"\">My Profile</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"UserEditProfile.jsp\">Edit Profile</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"UserChangePassword.jsp\">Change Password</a>\n");
      out.write("        </div>\n");
      out.write("      </li> \n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("         Search\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"SearchWork.jsp\">Search work</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"SearchWorker.jsp\">search  Labour</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("         Notification\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"RequestDisplay.jsp\">Request Notifications</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"BookingDisplay.jsp\">Booking Notifications</a>\n");
      out.write("           <a class=\"dropdown-item\" href=\"ComplaintStatus.jsp\">My complaints</a>\n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("       <<li class=\"nav-item \">\n");
      out.write("                  <a class=\"nav-link\" href=\"Wishlist.jsp\">Wishlist </a>\n");
      out.write("                </li>\n");
      out.write("              \n");
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
      out.write("        <br><br><br>\n");
      out.write("        <div class=\"font\">\n");
      out.write("        <form method=\"post\">\n");
      out.write("        <table cellpadding=\"10\" align=\"center\">\n");
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
      out.write("                        <input type=\"submit\" name=\"search\" value=\"Search\" class=\"button\">\n");
      out.write("                        <input type=\"reset\" name=\"cancel\" value=\"Cancel\" class=\"button\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("        </table><br>\n");
      out.write("        <div class=\"main\">\n");
      out.write("        ");

                  String selectqry="select * from tbl_workpost p inner join tbl_worker w on w.worker_id=p.worker_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_place pla on pla.place_id=w.place_id inner join tbl_district d on d.district_id=pla.district_id";
                  if(request.getParameter("search")!=null){
                 selectqry="select * from tbl_workpost p inner join tbl_worker w on w.worker_id=p.worker_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_place pla on pla.place_id=w.place_id inner join tbl_district d on d.district_id=pla.district_id where w.place_id='"+request.getParameter("ddlplace")+"' and t.workertype_id='"+request.getParameter("ddltype")+"'";
                  }
                 ResultSet r=con.selectCommand(selectqry);
                
                 int i=0;
                  int amt,perc,total=0;
                  
                 while(r.next())
                 {
                     i++;
                  String worker_amt=r.getString("workpost_amount");
                  amt = Integer.parseInt(worker_amt);
                  perc=(amt/100)*5;
                  total=amt+perc;
                     
      out.write("\n");
      out.write("                     \n");
      out.write("                         <div class=\"sub\">\n");
      out.write("                             <div><img src=\"../Assets/Files/WorkPostPhoto/");
      out.print(r.getString("workpost_image"));
      out.write("\" height=\"120\" width=\"120\"></div>\n");
      out.write("                             <div class=\"cont\"><div>Details</div><div>");
      out.print(r.getString("workpost_details"));
      out.write("</div></div>\n");
      out.write("                             <div class=\"cont\"><div>Duration</div><div>");
      out.print(r.getString("workpost_duration"));
      out.write("</div></div>\n");
      out.write("                             <div class=\"cont\"><div>Estimated Amount*</div><div>");
out.println(total);
      out.write("</div></div>\n");
      out.write("                             <div class=\"cont\"><div>Worker</div><div>");
      out.print(r.getString("worker_name"));
      out.write("</div></div>\n");
      out.write("                             <div class=\"cont\"><div>Contact</div><div>");
      out.print(r.getString("worker_contact"));
      out.write("</div></div>\n");
      out.write("                             <div class=\"cont\"><div>Post Date</div><div>");
      out.print(r.getString("workpost_date"));
      out.write("</div></div>\n");
      out.write("                             <div><a href=\"ViewWorkGallery.jsp?sid=");
      out.print(r.getString("workpost_id"));
      out.write(" \">View Gallery</a></div>\n");
      out.write("                             <div><a href=\"ViewReviewWork.jsp?gid=");
      out.print(r.getString("workpost_id"));
      out.write(" \">View Ratings</a></div>\n");
      out.write("                             <div>\n");
      out.write("                                    ");

                                     String clr = "";
                                     String post_id=r.getString("workpost_id");
                                     String sqry="select count(*) as count from tbl_wishlist where workpost_id='"+post_id+"' and user_id='"+session.getAttribute("uid")+"'";
                                     //out.print(sqry);
                                     ResultSet rs=con.selectCommand(sqry);   
                                     rs.next();
                                     int count = Integer.parseInt(rs.getString("count"));
                                     if(count>0)
                                     {
                                     clr = "red";
                                     }
                                     
      out.write("\n");
      out.write("                                     <i class=\"fa-regular fa-heart ");
      out.print(clr);
      out.write("\" style=\"font-size: 20px;font-size: 20px;margin-left: -76px;margin-right: 55px;\" onclick=\"wishList(");
      out.print(r.getString("workpost_id"));
      out.write("),toggleHeartColor(this)\"></i>\n");
      out.write("                                  <a href=\"Booking.jsp?bid=");
      out.print(r.getString("workpost_id"));
      out.write(" \">Book Now</a></div>\n");
      out.write("                         </div>\n");
      out.write("                         \n");
      out.write("                     ");

                 }
                
                  
      out.write("\n");
      out.write("                   </div>\n");
      out.write("                   <br>\n");
      out.write("                   <h5 align=\"center\">*Terms and conditions: From the estimated amount, 5% will be retained by the company.</h5>                  \n");
      out.write("    </form>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/JQuery/jQuery.js\"></script>         \n");
      out.write("                            <script>\n");
      out.write("                              function getPlace(did)\n");
      out.write("                            {                                                    \n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/AjaxPlaces.jsp?pid=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                    $(\"#selplace\").html(result);\n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
      out.write("                           \n");
      out.write("                        </script>\n");
      out.write("                        <script src=\"../Assets/JQuery/jQuery.js\"></script>         \n");
      out.write("                            <script>\n");
      out.write("                              function wishList(did)\n");
      out.write("                            {\n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/AjaxWishlist.jsp?pid=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                    \n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
      out.write("                           \n");
      out.write("                        </script>\n");
      out.write("        </div>\n");
      out.write("                   <br><br><br><br>\n");
      out.write("                         ");
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
      out.write("                  <a href=\"UserHomePage.jsp\" >\n");
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
      out.write("    </div>\n");
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
