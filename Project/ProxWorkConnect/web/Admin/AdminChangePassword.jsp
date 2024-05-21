<%-- 
    Document   : ChangePassword.jsp
    Created on : 18 Jan, 2024, 2:56:03 PM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import = "java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password</title>
    </head>
    <%  
        
       String currentpsswd=request.getParameter("txtpsswd");
       String newpsswd = request.getParameter("txtnpsswd");
       String repsswd = request.getParameter("txtrpsswd");
       String pass ="";
       String aq = "select*from tbl_admin where admin_id ='"+session.getAttribute("adid")+"'";
       ResultSet rs = con.selectCommand(aq);
       rs.next();
       pass = rs.getString("admin_password");
       if(request.getParameter("txtupdate")!=null)
       {      
        if(pass.equals(currentpsswd))
        {
            if(newpsswd.equals(repsswd))
            {
                String aq1 = "update tbl_admin set admin_password = '"+request.getParameter("txtnpsswd")+"'where admin_id = '"+session.getAttribute("adid")+"'";
                con.executeCommand(aq1);
              %>    
               <script>
                        alert("Password Changed");
                        window.location="../Guest/login.jsp";
                    </script>
                <%
            }
            else
            {
                %>
                    <script>
                        alert("New password Mismatched");
                        window.location="ChangePassword.jsp";
                    </script>
                <%
            }
        }
        else
        {
            %>
            <script>
                alert("Current Password Mismatched");
                window.location="ChangePassword.jsp";
            </script>
            <%
        }
       }
    %>
    <body>
        <form method="post">    
    <table border="3" align="center">   
    <tr>
        <td>Current Password</td>
        <td><input type="password" name="txtpsswd" placeholder="Enter Current Password" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required></td>
    </tr>
    <tr>
        <td>New Password</td>
        <td><input type="password" name="txtnpsswd" placeholder="Enter New Password" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required></td>
    </tr>
    <tr>
        <td>Re-Password</td>
        <td><input type="password" name="txtrpsswd" placeholder="ReEnter Password" required></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
         <input type="submit" name="txtupdate" value="Update">
        </td>
    </tr>
    </table>
        </form>
    </body>
</html>