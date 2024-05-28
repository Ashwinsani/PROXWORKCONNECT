package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class PaymentBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write('\n');

    String preq = request.getParameter("yid");
    String selQry="select * from tbl_workpostrequest where request_id='"+preq+"'";
    ResultSet rs = con.selectCommand(selQry);
    double worker_amt,perc,total=0;
    if(rs.next())
    {
       
        worker_amt=Integer.parseInt(rs.getString("request_amount"));
        perc=worker_amt*0.10;
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
                String upQ="update tbl_workpostrequest set request_status='6' where request_id='"+request.getParameter("yid")+"'";
                 
                    if(con.executeCommand(upQ))
                   {
                        
      out.write("\n");
      out.write("                    <script>\n");
      out.write("                            alert('Payment Successfull');\n");
      out.write("                            window.location=\"BookingDisplay.jsp\";\n");
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
      out.write("    </body>\n");
      out.write("    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>\n");
      out.write("    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js'></script>\n");
      out.write("</html>\n");
      out.write("\n");
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
