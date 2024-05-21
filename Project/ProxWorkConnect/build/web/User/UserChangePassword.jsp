<%-- 
    Document   : ChangePassword
    Created on : 11 Jan, 2024, 10:27:35 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ChangePassword</title>
        <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
                width: 275px;
                height:50px; 
                color:white;
                border-radius: 2px;
            }    
                
                
            .font{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8;
            }
            .button{
                background-color: #e0e032c2;
            }
            </style>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <body>
        <br> <br> <br>
        <div class="font">
        <%  
        
       String currentpsswd=request.getParameter("psswd");
       String newpsswd = request.getParameter("newpsswd");
       String repsswd = request.getParameter("repass");
       String pass ="";
       String sq = "select*from tbl_user where user_id ='"+session.getAttribute("uid")+"'";
       ResultSet rs = con.selectCommand(sq);
       rs.next();
       pass = rs.getString("user_password");
       if(request.getParameter("update")!=null)
       {      
        if(pass.equals(currentpsswd))
        {
            if(newpsswd.equals(repsswd))
            {
                String uq = "update tbl_user set user_password = '"+request.getParameter("newpsswd")+"'where user_id = '"+session.getAttribute("uid")+"'";
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
                        window.location="UserChangePassword.jsp";
                    </script>
             <%
            }
        }
        else
        {
            %>
            <script>
                alert("Current Password Mismatched");
                window.location="UserChangePassword.jsp";
            </script>
            <%
        }
       }
    %>
        <form method="post">
        <table cellpadding="10" align="center">
        <tr>
            <td>Current Password</td>
                    <td>
                        <input required class="text-box" type="password" name="psswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr>
                <tr>
            <td>New Password</td>
                    <td>
                        <input required class="text-box" type="password" name="newpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr>
                <tr>
            <td>Re-Password</td>
            <td><input type="password" class="text-box" required name="repass" placeholder="Re-Enter Password"></td>
        </tr>
        <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="update" value="Update" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
        </table>
        </form>
        </div>
    </body>
    <br> <br> <br> <br>
     <%@include file="Foot.jsp" %>
    </div>
</html>