<%-- 
    Document   : Myprofile
    Created on : 11 Jan, 2024, 10:01:14 AM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My Profile</title>
    </head>
        <body>
        <%
          String sel1 = "select*from tbl_worker where worker_id='"+session.getAttribute("wid")+"'";  
          ResultSet rsw = con.selectCommand(sel1);
          if(rsw.next())
          {
        %>
        <form method="Post">
            <table border="1" align="center">
                <tr>
                   <td colspan="2" align="right"><img src="../Assets/Files/WorkerPhoto/<%=rsw.getString("worker_photo")%>" height="120" width="120"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%=rsw.getString("worker_name")%></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><%=rsw.getString("worker_contact")%></td>
                </tr>
                <tr>   
                    <td>Email</td>
                    <td><%=rsw.getString("worker_email")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><%=rsw.getString("worker_address")%>
                    </td>
                </tr>
                <%
          }
                %>
            </table>
        </form>
    </body>
</html>
