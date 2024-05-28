<%-- 
    Document   : ComplaintWork
    Created on : 21 May, 2024, 10:50:41 PM
    Author     : ashwi
--%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Work</title>
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
                border-radius: 2px;
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
            if (request.getParameter("btn_submit") != null) {
                String insqry = "insert into tbl_complaint (complaint_title,complaint_content, complaint_date, user_id,workpost_id) values ( '" + request.getParameter("title") + "','" + request.getParameter("content") + "',curdate(), '" + session.getAttribute("uid") + "','" + request.getParameter("cid") + "')";
               out.println(insqry);
               
                if( con.executeCommand(insqry))
               {
                
        %>
             <script>
                alert("Complaint Send");
              window.location = "UserHomePage.jsp";//password thettiya same pg illot varan
             </script>
         <%
               }
                else{
         %>
             <script>
                alert("Complaint Failed");
                window.location = "UserHomePage.jsp";//password thettiya same pg illot varan
             </script>                                                     
        <%
               }
            }
        %>
        <form method="post" >
            <table cellpadding="10" align="center">
                <tr>
                    <td>Complaint title</td>
                    <td>
                        <textarea class="text-box" name="title" rows="6" cols="20"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Complaint</td>
                    <td>
                        <textarea  class="text-box "name="content" rows="6" cols="20"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Register" class="button">&nbsp&nbsp<input type="reset" name="btn_reset" value="Reset" class="button"</td>
                </tr>
            </table>
            
        </form>
        
    </body>
     </div>
         <br><br><br><br>
    <%@include file="Foot.jsp" %>
     </div>
    </div>
</html>
