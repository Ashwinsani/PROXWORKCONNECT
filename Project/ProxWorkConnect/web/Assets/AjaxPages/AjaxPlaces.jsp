<%-- 
    Document   : AjaxPlaces.jsp
    Created on : 7 Dec, 2023, 11:57:09 AM
    Author     : ashwi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<option value="">--select--</option>
<html>
    <%
     String selqry="select * from tbl_place where district_id='"+request.getParameter("pid")+"'";
     ResultSet rs=con.selectCommand(selqry);
     while(rs.next())
     {  
    %>
    <option value="<%=rs.getString("place_id")%>"><%=rs.getString("place_name")%></option>
 <%
     }
     %>
       
   
</html>
