<%-- 
    Document   : WorkGalleryDisplay
    Created on : 1 Feb, 2024, 11:25:19 AM
    Author     : ashwi
--%> 
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WorkGalleryDisplay</title>
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
                font-weight: bold; 
                font-weight: italic; 
                
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
              String delqry="delete from tbl_workpostgallery where workpostgallery_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("WorkGalleryDisplay.jsp?gid="+request.getParameter("gid"));
          }
        %>
                <br><br>
        <div align="center">
        <h2 class="font">Image Gallery</h2>
         
        <form method="post">
        <table cellpadding=10" align="center">
               
               <!-- <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Action</th>
                    
                </tr>-->
        <%
                 String selqry = "select*from tbl_workpostgallery where workpost_id='"+request.getParameter("gid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     
                     %>
                     <tr>
                        
                         <td><img src="../Assets/Files/WorkPostGallery/<%=rs.getString("gallery_image")%>" height="200px" width="200px"</td>
                         <td><a href="WorkGalleryDisplay.jsp?did=<%=rs.getString("workpostgallery_id")%>&gid=<%=request.getParameter("gid")%>">Delete</a></td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
        </form>
             </div> 
    </body>
    <br><br> <br><br> <br><br> <br><br>
     <%@include file="Foot.jsp" %>
      </div>
             </div> 
        
</html>
