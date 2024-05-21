<%-- 
    Document   : AdminRegistration.jsp
    Created on : 18 Jan, 2024, 10:40:30 AM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        if (request.getParameter("submit")!=null)
        {
            if (request.getParameter("psswd").equals (request.getParameter("repass")))
            {
                String selqry= "insert into tbl_admin(admin_name,admin_email,admin_password)values('"+request.getParameter("name")+"','"+request.getParameter("email")+"','"+request.getParameter("psswd")+"')"; 
                con.executeCommand(selqry);
            
        %>
        <script type="text/javascript" >
            alert("Upload Successfully..");
            setTimeout(function() {
                window.location.href = 'AdminRegistration.jsp'
            }, 100);
        </script>
        <%
                
            }
            else
                {
                     %>
        <script type="text/javascript" >
            alert("Password Mismatch..");
            setTimeout(function() {
                window.location.href = 'AdminRegistration.jsp'
            }, 100);
        </script>
        <%
                }
              }
        %>
        <form method="Post">
            <table border="1" align="center">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Enter name"  title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"</td>
                </tr>
                <tr>   
                    <td>Email</td>
                    <td>
                        <input type="email" required name="email" placeholder="Enter Email-Id">
                    </td>
                </tr>
                <td>Password</td>
                    <td>
                        <input type="password" required name="psswd" placeholder="Enter Password"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                    </td>
                </tr>
                 <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input type="password" name="repass" placeholder="Re-enter Password">
                    </td>
                 <tr>
                   <td colspan="2" align="center">
                        <input  type="submit" name="submit" value="submit">
                        <input type="reset" name="cancel" value="cancel">
                   </td>
                </tr>
            </table>
        </form>
    </body>
</html>
