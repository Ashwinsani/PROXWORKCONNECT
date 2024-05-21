<%-- 
    Document   : HomePage.jsp
    Created on : 12 Jan, 2024, 3:20:40 PM
    Author     : ashwi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User HomePage</title>
        <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
            h1{
                 font-family: "Audiowide", sans-serif;
            }
            .banner {
       font-family:'Lovato Light', serif;
    font-size: 100px;
    text-align: center;
    color: #ffef19b8;
    margin: 50px 0;
    font-style: italic;
}
}
            </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
     <%@include file="Head.jsp" %>
    <body>
       <h1  class="banner">Welcome <%=session.getAttribute("uname")%></h1>
        
      
       
    </body>
    <br><br><br><br><br><br><br>
    </div>
   
        
    <%@include file="Foot.jsp" %>
     </div>
</html>


