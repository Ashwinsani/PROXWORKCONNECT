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
          String sel1 = "select*from tbl_user where user_id='"+session.getAttribute("uid")+"'";  
          ResultSet rsu = con.selectCommand(sel1);
          if(rsu.next())
          {
        %>
        <form method="Post">
            <table border="1" align="center">
                <tr>
                   <td colspan="2" align="right"><img src="../Assets/Files/UserPhoto/<%=rsu.getString("user_photo")%>" height="120" width="120">"</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%=rsu.getString("user_name")%></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><%=rsu.getString("user_contact")%></td>
                </tr>
                <tr>   
                    <td>Email</td>
                    <td><%=rsu.getString("user_email")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><%=rsu.getString("user_address")%>
                    </td>
                </tr>
                <%
          }
                %>
            </table>
        </form>
    </body>
</html>
