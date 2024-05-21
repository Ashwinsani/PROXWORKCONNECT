<%-- 
    Document   : AdminRegistration.jsp
    Created on : 18 Jan, 2024, 10:40:30 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
        <style>
          
        </style>

    </head>
    
               
                 <body>
                <table align="center" cellpadding="10"></table>
         <%
         if(request.getParameter("save")!=null)
         { 
            if(request.getParameter("adminpswd").equals(request.getParameter("repass")))
            { 
             
             String insqry="insert into tbl_admin(admin_name,admin_email,admin_password)values('"+request.getParameter("adminname")+"','"+request.getParameter("adminemail")+"','"+request.getParameter("adminpswd")+"')";
             con.executeCommand(insqry);
            
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
            alert("Password mismatch..");
            setTimeout(function() {
                window.location.href = 'AdminRegistration.jsp'
            }, 100);
        </script>
        <%
                }
         }    
         
        %>

         <form method="post">
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="adminname" class="text-box" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                        </td>
                    
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="adminemail" class="text-box" placeholder="Enter Email-Id" required>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input required type="password" name="adminpswd"  class="text-box" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr> 
                <tr>
            <td>Confirm Password</td>
            <td><input type="password" required name="repass"  class="text-box" placeholder="Re-Enter Password"></td>
          </tr>
          <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="save" value="Save">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
         </form>        
    </body>

</html>
