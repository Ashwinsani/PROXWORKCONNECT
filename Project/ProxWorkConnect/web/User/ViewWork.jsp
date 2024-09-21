<%-- 
    Document   : ViewWork.jsp
    Created on : 1 Mar, 2024, 3:45:14 PM
    Author     : ashwi
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uploaded Works</title>
        <style>
        .cont {
                    display: flex;
                    width: 200px;
                    justify-content: space-between;
            }
            .sub {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    gap: 7px;
                    padding: 22px;
                    background-color: #65720866;
                    border-radius: 17px;
            }
            .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
              .bg-img{
            background-image:url("../Assets/Templates/Main/images/userhome1.jpg");
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
            .fonth1{
                font-family: "Poppins", sans-serif;
                color:white;
                font-weight: bold;
            }
    </style>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    <body>
        <div align="center">
        <h2 class="fonth1">Uploaded Works</h2>
        <br>
        <div class="font">
        <form method="post">
       <div class="main">
               
               <!-- <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Details</th>
                    <th>Duration</th>
                    <th>Posted Date</th>
         
                    <th>Image Gallery</th>
                </tr>-->
        <%
                 String selqry = "select*from tbl_workpost where worker_id='"+request.getParameter("sid")+"'"; 
                 
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <div class="sub">
                        
                         <div><img src="../Assets/Files/WorkPostPhoto/<%=rs.getString("workpost_image")%>" height="70" width="70"</div>
                         <div class="cont"><div>Details</div><div><%=rs.getString("workpost_details")%></div></div>
                         <div class="cont"><div>duration</div><div><%=rs.getString("workpost_duration")%></div></div>
                         <div class="cont"><div>Post date</div><div><%=rs.getString("workpost_date")%></div></div>
                         
                         <div><a href="ViewWorkGallery.jsp?sid=<%=rs.getString("workpost_id")%> ">View Gallery</a></div>
                     </tr>
                     
                      </div>
                     </div>
                     
                     <%
                 }
                     %>  
                     </div>
             </table>
        </form>
                   
         


    </body>
        
     
     
        </div>
                     <br><br><br><br><br><br><br><br><br>
            <%@include file="Foot.jsp" %>
    </div>
</html>