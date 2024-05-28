<%-- 
    Document   : WorkPostGallery
    Created on : 24 Jan, 2024, 10:53:27 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WorkGallery</title>
    <style>
             .bg-img{
            background-image:url("../Assets/Templates/Main/images/worker1.jpg");
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
                background-color: yellow;
            }
            
        </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <div class="font">
    <body>
       <br><br><br> 
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/WorkGalleryUploadAction.jsp">
           
        <table cellpadding="10" align="center">
       <tr>
                    <td>Gallery</td>
                    <td align="center">
                        <input class="text-box" required type="file" name="gallery">
                    </td>
                    <td>
                        <input required type="text" name="workpostid" value="<%=request.getParameter("pid")%>" hidden>
                        
                    </td>
                     
       </tr>
      
       <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="save" value="Save" class="button">
                        <input type="reset" name="cancel" value="Cancel" class="button">
                    </td>
                </tr>
            </table>
      </form>
    
    </body>
    <br><br><br><br>
   
         </div>
     <%@include file="Foot.jsp" %>
      </div>
     
    </div>
</html>