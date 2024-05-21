<%-- 
    Document   : WorkPostDisplay
    Created on : 19 Jan, 2024, 11:12:24 AM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WorkPostDisplay</title>
    </head>
    <body>
        <%
        if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_workpost where workpost_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("WorkPostDisplay.jsp");
          }
        %>
        <div align="center">
        <h2>Uploaded Works</h2>
         
        <form method="post">
        <table border="3" align="center">
               
                <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Duration</th>
                    <th>Posted Date</th>
                    <th>Action</th>
                    <th> Add More Photos</th>
                    <th>View more</th>
                </tr>
        <%
                 String selqry = "select*from tbl_workpost where worker_id='"+session.getAttribute("wid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/WorkPostPhoto/<%=rs.getString("workpost_image")%>" height="70" width="70"</td></td>
                         <td><%=rs.getString("workpost_duration")%></td>
                         <td><%=rs.getString("workpost_date")%></td>
                         <td><a href="WorkPostDisplay.jsp?did=<%=rs.getString("workpost_id")%>">Delete</a></td>
                         <td><a href="WorkPostGallery.jsp?pid=<%=rs.getString("workpost_id")%>">Addphoto</a></td>
                         <td><a href="WorkGalleryDisplay.jsp?gid=<%=rs.getString("workpost_id")%>">morephotos</a></td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
        </form>
             </div>        
         
    </body>
</html>