<%-- 
    Document   : Myprofile
    Created on : 11 Jan, 2024, 10:01:14 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Profile</title>
    </head>
    <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/worker1.jpg");
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
          String selqry = "select*from tbl_worker where worker_id='"+session.getAttribute("wid")+"'";  
          ResultSet rs2 = con.selectCommand(selqry);
          if(rs2.next())
          {
        %>
       <form method="Post">
            <div class="main">
            <div class="sub">
                
            <table cellpadding="10" align="center">
               <tr>
                    <td colspan="2" align="center"><img src="../Assets/Files/WorkerPhoto/<%=rs2.getString("worker_photo")%>" height="120" width="120"</td>
               </tr>
                <tr>
                    <td >Name</td>
                    <td class="txt"><%=rs2.getString("worker_name")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td class="txt"><%=rs2.getString("worker_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td  class="txt"><%=rs2.getString("worker_email")%>
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td class="txt"><%=rs2.getString("worker_address")%>
                 </tr>
            <%
          }
            %>     
        </table>
            </div>
            </div>
        </form>
 <br><br><br><br>
        </div>
        </div>
     <%@include file="Foot.jsp" %>
    </div>

    </body>
</html>