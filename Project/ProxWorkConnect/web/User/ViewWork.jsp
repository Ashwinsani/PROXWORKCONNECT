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
    </head>
    <%@include file="Head.jsp" %>
    <body>
        <div align="center">
        <h2>Uploaded Works</h2>
         
        <form method="post">
        <table border="3" align="center">
               
                <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Details</th>
                    <th>Duration</th>
                    <th>Posted Date</th>
         
                    <th>Image Gallery</th>
                </tr>
        <%
                 String selqry = "select*from tbl_workpost where worker_id='"+request.getParameter("sid")+"'"; 
                 
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/WorkPostPhoto/<%=rs.getString("workpost_image")%>" height="70" width="70"</td></td>
                          <td><%=rs.getString("workpost_details")%></td>
                         <td><%=rs.getString("workpost_duration")%></td>
                         <td><%=rs.getString("workpost_date")%></td>
                         
                         <td><a href="ViewWorkGallery.jsp?sid=<%=rs.getString("workpost_id")%> ">View Gallery</a></td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
        </form>
             </div>        
         
    </body>
</html>

    </body>
     <%@include file="Foot.jsp" %>
</html>