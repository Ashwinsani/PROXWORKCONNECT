<%-- 
    Document   : Myprofile
    Created on : 11 Jan, 2024, 10:01:14 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Profile</title>
    </head>
        <body>
            <%
          String selqry = "select*from tbl_worker where worker_id='"+session.getAttribute("wid")+"'";  
          ResultSet rs2 = con.selectCommand(selqry);
          if(rs2.next())
          {
        %>
        <form method="post">
        <table border="3" align="center">
               <tr>
                    <td colspan="2" align="right"><img src="../Assets/Files/Workerphoto/<%=rs2.getString("worker_photo")%>" height="120" width="120"</td>
               </tr>
                <tr>
                    <td>Name</td>
                    <td><%=rs2.getString("worker_name")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><%=rs2.getString("worker_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%=rs2.getString("worker_email")%>
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><%=rs2.getString("worker_address")%>
                 </tr>
            <%
          }
            %>     
        </table>
    
        </form>
    </body>
</html>

    </body>
</html>