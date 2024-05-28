<%-- 
    Document   : Myprofile
    Created on : 11 Jan, 2024, 10:01:14 AM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My Profile</title>
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
            }
            .txt{
               font-family: "Poppins", sans-serif;
                color: White; 
                font-weight: bold;
            }
              .sub {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    gap: 7px;
                    padding: 27px;
                    background-color: #65720866;
                    border-radius: 34px;
                    
              }
              .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
            </style>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <body>
            <br><br><br>
            <div class="font">
        <%
          String selqry = "select*from tbl_user where user_id='"+session.getAttribute("uid")+"'";  
          ResultSet rsu = con.selectCommand(selqry);
          if(rsu.next())
          {
        %>
        <form method="Post">
            <div class="main">
            <div class="sub">
                
            <table cellpadding="10" align="center">
                <tr>
                   <td colspan="2" align="center" ><img src="../Assets/Files/UserPhoto/<%=rsu.getString("user_photo")%>" height="120" width="120"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td class="txt"><%=rsu.getString("user_name")%></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td  class="txt"><%=rsu.getString("user_contact")%></td>
                </tr>
                <tr>   
                    <td>Email</td>
                    <td class="txt"><%=rsu.getString("user_email")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td  class="txt"><%=rsu.getString("user_address")%>
                    </td>
                </tr>
                <%
          }
                %>
                           

            </table>
                 </div>
            </div>
        </form>
    </body>
    <br><br><br><br>
        </div>
        </div>
     <%@include file="Foot.jsp" %>
    </div>
</html>

