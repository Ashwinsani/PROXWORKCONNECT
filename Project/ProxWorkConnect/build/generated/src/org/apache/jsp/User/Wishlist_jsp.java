package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Wishlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>My Wishlist</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
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
      out.write("                    background-color: #E1F5FE;\n");
      out.write("                    border-radius: 17px;\n");
      out.write("            }\n");
      out.write("            .main {\n");
      out.write("                    display: flex;\n");
      out.write("                    flex-wrap: wrap;\n");
      out.write("                    justify-content: center;\n");
      out.write("                    align-items: center;\n");
      out.write("                    gap: 2rem;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div class=\"main\">\n");
      out.write("        ");

             String sqry="select * from tbl_workpost p inner join tbl_wishlist l on l.workpost_id=p.workpost_id inner join tbl_worker w on w.worker_id=p.worker_id";  
             ResultSet r=con.selectCommand(sqry);
                
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     
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
      out.write("                             <div>\n");
      out.write("                                    ");

                                     String clr = "";
                                     String post_id=r.getString("workpost_id");
                                     String selqry="select count(*) as count from tbl_wishlist where workpost_id='"+post_id+"' and user_id='"+session.getAttribute("uid")+"'";
                                     //out.print(sqry);
                                     ResultSet rs=con.selectCommand(selqry);   
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
      out.write("                     ");

                 }
                
                  
      out.write("\n");
      out.write("                   </div>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/JQuery/jQuery.js\"></script>         \n");
      out.write("                            <script>\n");
      out.write("                              function wishList(did)\n");
      out.write("                            {\n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/AjaxWishlist.jsp?pid=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                 window.location=\"Wishlist.jsp\";   \n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
      out.write("                           \n");
      out.write("                        </script>\n");
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