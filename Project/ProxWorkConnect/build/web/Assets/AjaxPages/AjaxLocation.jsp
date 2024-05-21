<%-- 
    Document   : AjaxLocation
    Created on : 4 Jan, 2024, 3:13:39 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <option value="">--select--</option>
     <%
     String selqry="select * from tbl_location where place_id='"+request.getParameter("pid")+"'";
     ResultSet rs=con.selectCommand(selqry);
     while(rs.next())
     {  
    %>
    <option value="<%=rs.getString("location_id")%>"><%=rs.getString("location_name")%></option>
 <%
     }
     %>
       
   
</html>

