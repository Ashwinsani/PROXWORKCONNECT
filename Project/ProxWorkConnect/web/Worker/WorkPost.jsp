<%-- 
    Document   : WorkPost.jsp
    Created on : 18 Jan, 2024, 3:28:23 PM
    Author     : ashwi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Post</title>
   <style>
             .bg-img{
            background-image:url("../Assets/Templates/Main/images/worker1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
               
                color:white;
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
    <div class="font">
    <body>
        
      <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/WorkPostUploadAction.jsp">
            <table cellpadding="10" align="center">

       <tr>
                    
                    <td>Photo</td>
                    <td align="center">
                        <input required type="file" name="photo">
                    </td>
       </tr>
       <tr>
                        <td>Details</td>
                        <td align="center">
                         <div style: box-width:2px;>   <textarea class="text-box" name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
       <tr>
                   <td>Duration</td>
                    <td>
                        <input class="text-box" type="text" name="duration" placeholder="Enter duration of work" required>
                    </td>
                </tr>
       <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="save" value="Save" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
            </table>
      </form><br>
           
        
    </body>
      </div>
     <%@include file="Foot.jsp" %>
      </div>
     
    </div>
</html>
