<%-- 
    Document   : EditProfile
    Created on : 11 Jan, 2024, 10:02:34 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Edit Profile</title>
    </head>
    <body>
         <%
          if(request.getParameter("update")!=null) 
           {
                    String upqry = "update tbl_worker set worker_name = '"+request.getParameter("name")+"',worker_contact = '"+request.getParameter("contact")+"',worker_email = '"+request.getParameter("email")+"',worker_address = '"+request.getParameter("address")+"'where worker_id = '"+session.getAttribute("wid")+"'";
                    con.executeCommand(upqry);
                    response.sendRedirect("WorkerEditProfile.jsp");    
            } 
             String editname="";
             String editcontact="";
             String editemail="";
             String editaddress="";
             
            String sel = "select*from tbl_worker where worker_id ='"+session.getAttribute("wid")+"'";
            ResultSet rs1 = con.selectCommand(sel);
            rs1.next();
            editname = rs1.getString("worker_name");
            editcontact = rs1.getString("worker_contact");
            editemail = rs1.getString("worker_email");
            editaddress = rs1.getString("worker_address");
                        
        %>
             
        <form method="post">
        <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="name"  value="<%=editname%>" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" name="contact" value="<%=editcontact%>"  placeholder="Enter Contact No" title="Phone number with 7-9 and remaining 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input required type="email" name="email" value="<%=editemail%>" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea name="address" rows="3" cols="20" required><%=editaddress%>"</textarea>
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