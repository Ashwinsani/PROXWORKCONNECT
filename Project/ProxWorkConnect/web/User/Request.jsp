<%-- 
    Document   : Request.jsp
    Created on : 16 May, 2024, 1:02:37 AM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request</title>
        <style>
             .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
                color:white;
                border-width: 3px;
               border-radius: 5px;
            }    
             .font{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8; 
            }
            .button{
                background-color: yellow;
            }
            
        </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <br><br>
    <div class="font">
    <body>
        <%
          if(request.getParameter("request")!=null){
                       String insqry="insert into tbl_workrequest(request_details,address,work_date,request_date,worker_id,user_id)values('"+request.getParameter("txt_details")+"','"+request.getParameter("txt_address")+"','"+request.getParameter("date")+"',curdate(),'"+request.getParameter("rid")+"','"+session.getAttribute("uid")+"')";
              con.executeCommand(insqry);
              
        %>
        <script>
                alert("Request Successfull");
                window.location="UserHomePage.jsp";
            </script>
         <%
          }
          %>
        <form method="post">
            <table cellpadding="10" align="center">
        <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea class="text-box" name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td align="center">
                            <textarea class="text-box" name="txt_address" id="txt_address" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    <td>Work Date</td>
                    <td>
                        <input  type="date" name="date" placeholder="Enter Date of Work" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="request" value="Request" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
            </table>
        </form>
    </body>
    </div>
     <%@include file="Foot.jsp" %>
         </div>
    </div>
</html>