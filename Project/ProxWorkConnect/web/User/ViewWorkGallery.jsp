<%-- 
    Document   : ViewWorkBooking
    Created on : 5 Mar, 2024, 12:45:52 AM
    Author     : ashwi
--%>


<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Gallery</title>
        <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
            .font{
                 font-family: "Poppins", sans-serif;
                color: #ffef19b8;
                font-weight: bold; 
                font-weight: italic; 
                
            } 
        </style>
      <!--  <style>
         body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 10vh;
            margin: 0;
        }

        .card-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            padding: 20px;
            width: 90%;
            max-width: 800px;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.2s;
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 220px;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            width: 200px;
            height: 200px;
            display: block;
            object-fit: cover;
        }

        .card-content {
            padding: 15px;
        }-->

       
        </style>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    
    <body>
        <br><br>
        <div align="center">
        <h2 class="font">Work Gallery</h2>
        <br>
         
        <form method="post">
        <table cellpadding="10" align="center">
               
             <!--   <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    
                </tr>-->
       <%
                 String selqry = "select*from tbl_workpostgallery where workpost_id='"+request.getParameter("sid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     %>
                
                     <td><img src="../Assets/Files/WorkPostGallery/<%=rs.getString("gallery_image")%>"height="200px" width="200px"></td>
             
                     
                     <%
                 }
                     %> 
                     </form>
                      </table>
      
        </body>
    <br><br> <br><br> <br><br> <br><br>
     <%@include file="Foot.jsp" %>
      </div>
             </div> 
        </div>
   
</html>