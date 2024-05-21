<%-- 
    Document   : EditProfile
    Created on : 11 Jan, 2024, 10:02:34 AM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Profile</title>
    </head>
    <body>
        <%
         if(request.getParameter("update")!=null)
            {
                    String updqry = "update tbl_user set user_name = '"+request.getParameter("name")+"',user_contact = '"+request.getParameter("contact")+"',user_email = '"+request.getParameter("email")+"',user_address = '"+request.getParameter("address")+"'where user_id = '"+session.getAttribute("uid")+"'";
                    con.executeCommand(updqry);
                    response.sendRedirect("EditProfileU.jsp");
            }
            String editname="";
            String editcontact="";
            String editemail="";
            String editaddress="";
            String sq2 = "select*from tbl_user where user_id ='"+session.getAttribute("uid")+"'";
            ResultSet rs2 = con.selectCommand(sq2);
            rs2.next();
            editname = rs2.getString("user_name");
            editcontact = rs2.getString("user_contact");
            editemail = rs2.getString("user_email");
            editaddress = rs2.getString("user_address");
                        
        %> 
        <form method="Post">
            <table border="1" align="center">
                <tr>
                    <td>Name</td>
                    <td><input type="text" value="<%=editname%>" name="name" placeholder="Enter name"  title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$"</td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type="text"  value="<%=editcontact%>" name="contact" placeholder="Enter Contact No" pattern="[7-9]{1}[0-9]{9}" 
                title="Phone number with 7-9 and remaing 9 digit with 0-9"</td>
                </tr>
                <tr>   
                    <td>Email</td>
                    <td>
                        <input type="email" value="<%=editemail%>"  required name="email" placeholder="Enter Email-Id">
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea name="address"   rows="3" cols="20 " required> <%=editaddress%> </textarea>
                    </td>
                </tr>
                 <tr>
                   <td colspan="2" align="center">
                        <input  type="submit" name="update" value="submit">
                        <input type="reset" name="cancel" value="cancel">
                   </td>
                </tr>
            </table>
        </form>
    </body>
</html>
