<%-- 
    Document   : login
    Created on : 5 Jan, 2024, 4:25:01 PM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>                                                                                                     
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <%
            if (request.getParameter("btn_login") != null) {
                String email=request.getParameter("txtemail");
                String password=request.getParameter("txtpsswrd");
                String selqry="select * from tbl_user where user_email='"+email+"' and user_password='"+password+"'";
                ResultSet rsu=con.selectCommand(selqry);
                String wrkqry="select * from tbl_worker where worker_email='"+email+"' and worker_password='"+password+"'";
                ResultSet rsw=con.selectCommand(wrkqry);
                String admqry="select * from tbl_admin where admin_email='"+email+"' and admin_password='"+password+"'";
                ResultSet rsAd=con.selectCommand(admqry);
                
                if(rsu.next())
                    
                {
                    session.setAttribute("uid",rsu.getString("user_id"));
                    session.setAttribute("uname",rsu.getString("user_name"));
                    response.sendRedirect("../User/HomePageUser.jsp");
                }
                
                else if(rsw.next())
                    
                {
                    session.setAttribute("wid",rsw.getString("worker_id"));
                    session.setAttribute("wname",rsw.getString("worker_name"));
                    response.sendRedirect("../Worker/Homepagew.jsp");
                }
                 else if(rsAd.next())
                    
                {
                    session.setAttribute("adid",rsAd.getString("admin_id"));
                    session.setAttribute("adname",rsAd.getString("admin_name"));
                    response.sendRedirect("../Admin/AdminHomepage.jsp");
                }
            }
        
        %>
        <form method="Post">
            <table border="1" align="center">
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="txtemail"  placeholder="Enter Email-Id"</td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="txtpsswrd"  placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required</td>
                </tr>
                 <tr>
                    <td colspan="2" align="center"><input  type="submit" name="btn_login" value="login"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
