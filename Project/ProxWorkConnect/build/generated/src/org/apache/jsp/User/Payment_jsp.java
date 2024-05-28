package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');

    String preq = request.getParameter("yid");
    String selQry="select * from tbl_workrequest where workrequest_id='"+preq+"'";
    ResultSet rs = con.selectCommand(selQry);
    int worker_amt,perc,total=0;
    if(rs.next())
    {
       
        worker_amt=Integer.parseInt(rs.getString("request_amount"));
        perc=(worker_amt/100)*10;
        total=worker_amt+perc;
    }


      out.write("\n");
      out.write("    <!DOCTYPE html>\n");
      out.write("    <html lang=\"en\">\n");
      out.write("        <head>\n");
      out.write("            <style>\n");
      out.write("                *{\n");
      out.write("                    margin: 0;\n");
      out.write("                    padding: 0;\n");
      out.write("                    box-sizing: border-box;\n");
      out.write("                }\n");
      out.write("                body{\n");
      out.write("                    background-color: #f5f5f5;\n");
      out.write("                    font-family: Arial, Helvetica, sans-serif;\n");
      out.write("                }\n");
      out.write("                .wrapper{\n");
      out.write("                    background-color: #fff;\n");
      out.write("                    width: 500px;\n");
      out.write("                    padding: 25px;\n");
      out.write("                    margin: 25px auto 0;\n");
      out.write("                    box-shadow: 0px 0px 20px rgba(0,0,0,0.5);\n");
      out.write("                }\n");
      out.write("                .wrapper h2{\n");
      out.write("                    background-color: #fcfcfc;\n");
      out.write("                    color: #7ed321;\n");
      out.write("                    font-size: 24px;\n");
      out.write("                    padding: 10px;\n");
      out.write("                    margin-bottom: 20px;\n");
      out.write("                    text-align: center;\n");
      out.write("                    border: 1px dotted #333;\n");
      out.write("                }\n");
      out.write("                h4{\n");
      out.write("                    padding-bottom: 5px;\n");
      out.write("                    color: #7ed321;\n");
      out.write("                }\n");
      out.write("                .input-group{\n");
      out.write("                    margin-bottom: 8px;\n");
      out.write("                    width: 100%;\n");
      out.write("                    position: relative;\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-direction: row;\n");
      out.write("                    padding: 5px 0;\n");
      out.write("                }\n");
      out.write("                .input-box{\n");
      out.write("                    width: 100%;\n");
      out.write("                    margin-right: 12px;\n");
      out.write("                    position: relative; \n");
      out.write("                }\n");
      out.write("                .input-box:last-child{\n");
      out.write("                    margin-right: 0;\n");
      out.write("                }\n");
      out.write("                .name{\n");
      out.write("                    padding: 14px 10px 14px 50px;\n");
      out.write("                    width: 100%;\n");
      out.write("                    background-color: #fcfcfc;\n");
      out.write("                    border: 1px solid #00000033;\n");
      out.write("                    outline: none;\n");
      out.write("                    letter-spacing: 1px;\n");
      out.write("                    transition: 0.3s;\n");
      out.write("                    border-radius: 3px;\n");
      out.write("                    color: #333;\n");
      out.write("                }\n");
      out.write("                .name:focus, .dob:focus{\n");
      out.write("                    -webkit-box-shadow:0 0 2px 1px #7ed32180;\n");
      out.write("                    -moz-box-shadow:0 0 2px 1px #7ed32180;\n");
      out.write("                    box-shadow: 0 0 2px 1px #7ed32180;\n");
      out.write("                    border: 1px solid #7ed321;\n");
      out.write("                }\n");
      out.write("                .input-box .icon{\n");
      out.write("                    width: 48px;\n");
      out.write("                    display: flex;\n");
      out.write("                    justify-content: center;\n");
      out.write("                    position: absolute;\n");
      out.write("                    padding: 15px;\n");
      out.write("                    top: 0px;\n");
      out.write("                    left: 0px;\n");
      out.write("                    bottom: 0px;\n");
      out.write("                    color: #333;\n");
      out.write("                    background-color: #f1f1f1;\t\n");
      out.write("                    border-radius: 2px 0 0 2px;\n");
      out.write("                    transition: 0.3s;\n");
      out.write("                    font-size: 20px;\n");
      out.write("                    pointer-events: none;\n");
      out.write("                    border: 1px solid #000000033;\n");
      out.write("                    border-right: none;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("\n");
      out.write("                .name:focus + .icon{\n");
      out.write("                    background-color: #7ed321;\n");
      out.write("                    color: #fff;\n");
      out.write("                    border-right: 1px solid #7ed321;\n");
      out.write("                    border-right: none;\n");
      out.write("                    transition: 1s;\n");
      out.write("                }\n");
      out.write("                .radio:checked + label {\n");
      out.write("                    background-color: #7ed321;\n");
      out.write("                    color: #fcfcfc\t;\n");
      out.write("                    border-right: 1px solid #7ed321;\n");
      out.write("                    border-right: none;\n");
      out.write("                    transition: 1s;\n");
      out.write("                }\n");
      out.write("                .dob{\n");
      out.write("                    width: 30%;\n");
      out.write("                    padding: 14px;\n");
      out.write("                    text-align: center;\n");
      out.write("                    background-color: #fcfcfc;\n");
      out.write("                    transition: 0.3s;\n");
      out.write("                    outline: none;\n");
      out.write("                    border: 1px solid #c0bfbf;\n");
      out.write("                    border-radius: 3px;\n");
      out.write("                }\n");
      out.write("                .radio{\n");
      out.write("                    display: none;\n");
      out.write("                }\n");
      out.write("                .input-box label{\n");
      out.write("                    width: 50%;\n");
      out.write("                    padding: 13px;\n");
      out.write("                    background-color: #fcfcfc;\n");
      out.write("                    display: inline-block;\n");
      out.write("                    float: left;\n");
      out.write("                    text-align: center;\n");
      out.write("                    border: 1px solid #c0bfbf; \n");
      out.write("                }\n");
      out.write("                .input-box label:first-of-type{\n");
      out.write("                    border-top-left-radius: 3px;\n");
      out.write("                    border-bottom-left-radius: 3px;\n");
      out.write("                    border-right: none;\n");
      out.write("                }\n");
      out.write("                .input-box label:last-of-type{\n");
      out.write("                    border-top-left-radius: 3px;\n");
      out.write("                    border-bottom-left-radius: 3px;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                .radio:checked{\n");
      out.write("                    background-color:green;\n");
      out.write("                    color: #fff;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                input[type=submit]{\n");
      out.write("                    width: 100%;\n");
      out.write("                    background: transparent;\n");
      out.write("                    border: none;\n");
      out.write("                    background: #7ed321;\n");
      out.write("                    color: #fff;\n");
      out.write("                    padding: 15px;\n");
      out.write("                    border-radius: 4px;\n");
      out.write("                    font-size: 16px;\n");
      out.write("                    transition: all 0.35s ease;\n");
      out.write("                }\n");
      out.write("                input[type=submit]:hover{\n");
      out.write("                    cursor: pointer;\n");
      out.write("                    background: #5eb105;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            </style>\n");
      out.write("            <meta charset=\"UTF-8\">\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width,initial-scale=1.0\">\n");
      out.write("            <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.4.2/css/all.css\">\n");
      out.write("            <title>Payement Gateway</title>\n");
      out.write("        </head>\n");
      out.write("        ");
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
      out.write("              <span>\n");
      out.write("                ProxWorkConnect\n");
      out.write("              </span>\n");
      out.write("            </a>\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("              <span class=\"\"></span>\n");
      out.write("            </button>\n");
      out.write("             <div class=\"collapse navbar-collapse ml-auto\" id=\"navbarSupportedContent\">\n");
      out.write("              <ul class=\"navbar-nav  \">\n");
      out.write("                <li class=\"nav-item \">\n");
      out.write("                  <a class=\"nav-link\" href=\"../index.html\">Home <span class=\"sr-only\">(current)</span></a>\n");
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
      out.write("        <body>\n");
      out.write("            <div class=\"wrapper\">\n");
      out.write("                <h2>Payment Gateway</h2>\n");
      out.write("                <form method=\"POST\">\n");
      out.write("                    <h4>Account</h4>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"text\" name=\"txtname\" id=\"txtname\" placeholder=\"Full Name\" required=\"required\">\n");
      out.write("                            <i class=\"fa fa-user icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"text\" name=\"txtnname\" id=\"txtnname\" placeholder=\"Nick Name\" required=\"required\">\n");
      out.write("                            <i class=\"fa fa-user icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"email\" name=\"txtemail\" id=\"txtemail\" placeholder=\"Email Address\" required=\"required\">\n");
      out.write("                            <i class=\"fa fa-envelope icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\t\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"text\" name=\"txt_amount\" placeholder=\"Amount\" readonly=\"\" value=\"");
      out.print(total);
      out.write("\" required=\"required\">\n");
      out.write("                            <i class=\"fa fa-envelope icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\t\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <h4>Date of Birth</h4>\n");
      out.write("                            <input class=\"dob\" type=\"text\" data-mask=\"00\" name=\"txtdate\" id=\"txtdate\" placeholder=\"DD\">\n");
      out.write("                            <input class=\"dob\" type=\"text\" data-mask=\"00\" name=\"txtmonth\" id=\"txtmonth\" placeholder=\"MM\">\n");
      out.write("                            <input class=\"dob\" type=\"text\" data-mask=\"0000\" name=\"txtyear\" id=\"txtyear\" placeholder=\"YYYY\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <h4>Gender</h4>\n");
      out.write("                            <input type=\"radio\" name=\"rdbgender\" id=\"male\" checked  class=\"radio\">\n");
      out.write("                            <label for=\"male\">Male</label>\n");
      out.write("                            <input type=\"radio\" name=\"rdbgender\" id=\"female\" class=\"radio\">\n");
      out.write("                            <label for=\"female\">Female</label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <h4>Payment Details</h4>\n");
      out.write("                            <input type=\"radio\" name=\"rdbpay\" id=\"cc\" checked class=\"radio\">\n");
      out.write("                            <label for=\"cc\">\n");
      out.write("                                <span><i class=\"fa fa-cc-visa\" aria-hidden=\"true\"></i>Credit Card</span>\n");
      out.write("                            </label>\n");
      out.write("                            <input type=\"radio\" name=\"rdbpay\" id=\"dc\" class=\"radio\">\n");
      out.write("                            <label for=\"dc\">\n");
      out.write("                                <span><i class=\"fa fa-cc-visa\" aria-hidden=\"true\"></i>Debit Card</span>\n");
      out.write("                            </label>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"tel\" id=\"txtcardno\" name=\"txtcardno\" required=\"required\" data-mask=\"0000 0000 0000 0000\" placeholder=\"Card Number\">\n");
      out.write("                            <i class=\"fa fa-credit-card icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"text\" name=\"txtcvc\" id=\"txtcvc\" data-mask=\"000\" placeholder=\"CVC\" required=\"required\">\n");
      out.write("                            <i class=\"fa fa-user icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input class=\"name\" type=\"text\" name=\"txtdate\" id=\"txtdate\" data-mask=\"00 / 00\" placeholder=\"EXP DATE\" required=\"required\">\n");
      out.write("                            <i class=\"fa fa-calendar icon\" aria-hidden=\"true\"></i>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"input-group\">\n");
      out.write("                        <div class=\"input-box\">\n");
      out.write("                            <input type=\"submit\" name=\"btn_pay\"  value=\"PAY NOW\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("     ");


            if (request.getParameter("btn_pay") != null) 
                {
                String upQ="update tbl_workrequest set request_status='6' where workrequest_id='"+request.getParameter("yid")+"'";
                 
                    if(con.executeCommand(upQ))
                   {
                        
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                            alert('Payment Successfull');\n");
      out.write("                            window.location=\"RequestDisplay.jsp\";\n");
      out.write("                    </script>\n");
      out.write("                    ");

                }
                else{
                      
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            alert('Payment Failed');\n");
      out.write("                            </script>       \n");
      out.write("                ");

                    }                
                  }
                
      out.write("  \n");
      out.write("   </body>\n");
      out.write("    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>\n");
      out.write("    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js'></script>\n");
      out.write("     ");
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
