<%-- 
    Document   : Booking
    Created on : 16 May, 2024, 12:56:36 AM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking </title>
        <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
            </style>
    </head>
    <div class="bg-img"
    <%@include file="Head.jsp" %>
    <body>
        <%
          if(request.getParameter("book")!=null){
                       String insqry="insert into tbl_workpostrequest(request_details,address,work_date,request_date,workpost_id,user_id)values('"+request.getParameter("txt_details")+"','"+request.getParameter("txt_address")+"','"+request.getParameter("date")+"',curdate(),'"+request.getParameter("bid")+"','"+session.getAttribute("uid")+"')";
              con.executeCommand(insqry);
              
        %>
        <script>
                alert("Booked Successfully");
              window.location="HomePageUser.jsp";
            </script>
         <%
          }
          %>
        <form method="post">
            <table border="3" align="center">
        <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td align="center">
                            <textarea name="txt_address" id="txt_address" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    <td>Work Date</td>
                    <td>
                        <input type="date" name="date" placeholder="Enter Date of Work" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="book" value="Book">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
     <%@include file="Foot.jsp" %>
    </div>
</html>
 