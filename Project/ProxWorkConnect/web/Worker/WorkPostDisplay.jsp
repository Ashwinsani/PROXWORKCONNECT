
<%-- 
    Document   : WorkPostDisplay
    Created on : 19 Jan, 2024, 11:12:24 AM
    Author     :ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WorkPostDisplay</title>
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
        <%
        if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_workpost where workpost_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("WorkPostDisplay.jsp");
          }
        %>
        <br>
        <div align="center">
        <h2 class="fonth1">Uploaded Works</h2>
         
        <br><br>
        <div class="font">
        <form method="post">
       <div class="main">
               
             <!--   <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Details</th>
                    <th>Duration</th>
                    <th>Posted Date</th>
                    <th>Action</th>
                    <th>Add More Images</th>
                    <th>Image Gallery</th>
                </tr>-->
        <%
                 String selqry = "select*from tbl_workpost where worker_id='"+session.getAttribute("wid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <div class="sub">
                         <div><img src="../Assets/Files/WorkPostPhoto/<%=rs.getString("workpost_image")%>" height="100" width="100"</div>
                         <div class="cont"><div>Details</div><div><%=rs.getString("workpost_details")%></div></div>
                         <div class="cont"><div>duration</div><div><%=rs.getString("workpost_duration")%></div></div>
                         <div class="cont"><div>Amount</div><div><%=rs.getString("workpost_amount")%></div></div>
                         <div class="cont"><div>Post date</div><div><%=rs.getString("workpost_date")%></div></div>
                         
                         <div><a href="WorkPostDisplay.jsp?did=<%=rs.getString("workpost_id")%>">Delete</a></div>
                         <div><a href="WorkGallery.jsp?pid=<%=rs.getString("workpost_id")%>">Add More mages</a></div>
                         <div><a href="WorkGalleryDisplay.jsp?gid=<%=rs.getString("workpost_id")%>">ViewGallery</a></div>
                    </div>
       </div> </tr>
                     
                     <%
                 }
                     %>      
             </table>
        </form>
              
             
        </div>
             <br><br>
            <%@include file="Foot.jsp" %>
         
    </body>
</html>
