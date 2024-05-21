<%-- 
    Document   : ChangePassword.jsp
    Created on : 18 Jan, 2024, 2:56:03 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Change Password</title>
    </head>
    <body>
        <%  
        
       String currentpsswd=request.getParameter("psswd");
       String newpsswd = request.getParameter("newpsswd");
       String repsswd = request.getParameter("repass");
       String pass ="";
       String sq = "select*from tbl_admin where admin_id ='"+session.getAttribute("aid")+"'";
       ResultSet rs = con.selectCommand(sq);
       rs.next();
       pass = rs.getString("admin_password");
       if(request.getParameter("update")!=null)
       {      
        if(pass.equals(currentpsswd))
        {
            if(newpsswd.equals(repsswd))
            {
                String uq = "update tbl_admin set admin_password = '"+request.getParameter("newpsswd")+"'where admin_id = '"+session.getAttribute("aid")+"'";
                con.executeCommand(uq);
         %>
                <script>
                        alert("Password Changed");
                        window.location="../Guest/Login.jsp";
                </script>
              <%
            }
            else
            {
                %>
                    <script>
                        alert("New password Mismatched");
                        window.location="AdminChangePassword.jsp";
                    </script>
                <%
            }
        }
        else
        {
            %>
            <script>
                alert("Current Password Mismatched");
                window.location="AdminChangePassword.jsp";
            </script>
            <%
        }
       }
    %>
        <form method="post">
        <table border="3" align="center">
        <tr>
            <td>Current Password</td>
                    <td>
                        <input required type="password" name="psswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr>
                <tr>
            <td>New Password</td>
                    <td>
                        <input required type="password" name="newpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr>
                <tr>
            <td>Re-Password</td>
            <td><input type="password" required name="repass" placeholder="Re-Enter Password"></td>
        </tr>
        <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="update" value="Update">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
        </table>
        </form>
    </body>
</html>