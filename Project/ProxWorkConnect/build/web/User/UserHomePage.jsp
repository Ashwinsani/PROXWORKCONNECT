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

.button {
            background-color: yellow; /* Blue background */
            border: none; /* Remove borders */
            color: white; /* White text */
            padding: 15px 32px; /* Some padding */
            text-align: center; /* Center the text */
            text-decoration: none; /* Remove underline */
            display: inline-block; /* Make the button inline-block */
            font-size: 16px; /* Increase font size */
            margin: 4px 2px; /* Some margin */
            cursor: pointer; /* Pointer/hand icon */
            border-radius: 8px; /* Rounded corners */
            transition: background-color 0.3s ease, transform 0.3s ease; /* Animation */
        }

        .button:hover {
            background-color: whitesmoke; /* Darker background on hover */
            transform: scale(1.05); /* Slightly increase size on hover */
        }

        .button:active {
            background-color: White; /* Even darker background on click */
            transform: scale(0.95); /* Slightly decrease size on click */
        }
            </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
     <%@include file="Head.jsp" %>
    <body>
       <h1  class="banner">Welcome <%=session.getAttribute("uname")%></h1>
        
       
       <table align="center">          
           <td> <a href="../index.html" class="button">LOG OUT</a>
           </td>
       </table>          
                
       
    </body>
    <br><br><br><br><br><br><br>
    </div>
   
        
    <%@include file="Foot.jsp" %>
     </div>
</html>


