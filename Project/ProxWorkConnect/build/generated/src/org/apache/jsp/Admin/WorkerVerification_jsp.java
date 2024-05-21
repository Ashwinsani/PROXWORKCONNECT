package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class WorkerVerification_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Worker verification</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

             if (request.getParameter("aid") != null) {
         String upqry = "update tbl_worker set worker_isactive='1' where worker_id='" + request.getParameter("aid") + "'";
        if (con.executeCommand(upqry)){
         response.sendRedirect("WorkerVerification.jsp");
        }   
        }
              if (request.getParameter("rid") != null) {
         String upqry = "update tbl_worker set worker_isactive='2' where worker_id='" + request.getParameter("rid") + "'";
        if (con.executeCommand(upqry)){
         response.sendRedirect("WorkerVerification.jsp");
        }
        }
        
      out.write("\n");
      out.write("        <h2 align=\"center\">New worker</h2>\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Photo</th>\n");
      out.write("                    <th>Proof</th>\n");
      out.write("                    <th>Place</th>\n");
      out.write("                    <th>Worker type</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("            </tr>\n");
      out.write("           ");

                String selqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='0'";
                ResultSet rs=con.selectCommand(selqry);
                int i=0;
                while(rs.next()){
                 i++; 
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("worker_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("worker_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("worker_photo"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("worker_proof"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("place_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("workertype_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"WorkerVerification.jsp?aid=");
      out.print(rs.getString("worker_id"));
      out.write("\">\n");
      out.write("                            Accept</a>|<a href=\"WorkerVerification.jsp?rid=");
      out.print(rs.getString("worker_id"));
      out.write("\">reject</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("                <h2 align=\"center\">Rejected worker</h2>\n");
      out.write("                <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Photo</th>\n");
      out.write("                    <th>Proof</th>\n");
      out.write("                    <th>Place</th>\n");
      out.write("                    <th>Worker type</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                String selqry1="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='2'";
                ResultSet rs1=con.selectCommand(selqry1);
                int j=0;
                while(rs1.next()){
                 j++; 
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(j);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("worker_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("worker_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("worker_photo"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("worker_proof"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("place_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("workertype_name"));
      out.write("</td> \n");
      out.write("                    <td><a href=\"WorkerVerification.jsp?aid=");
      out.print(rs1.getString("worker_id"));
      out.write("\">Accept</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("                </table>\n");
      out.write("          <h2 align=\"center\">Accepted worker</h2>\n");
      out.write("                <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Photo</th>\n");
      out.write("                    <th>Proof</th>\n");
      out.write("                    <th>Place</th>\n");
      out.write("                    <th>Worker type</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                String selqry2="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='1'";
                ResultSet rs2=con.selectCommand(selqry2);
                int k=0;
                while(rs2.next()){
                 k++; 
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(k);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_photo"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("worker_proof"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("place_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("workertype_name"));
      out.write("</td> \n");
      out.write("                    <td><a href=\"WorkerVerification.jsp?rid=");
      out.print(rs2.getString("worker_id"));
      out.write("\">reject</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("    </body>\n");
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
