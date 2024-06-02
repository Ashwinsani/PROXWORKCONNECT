<%-- 
    Document   : AjaxLocation
    Created on : 4 Jan, 2024, 3:13:39 PM
    Author     : ashwi
--%><%-- 
    Document   : AjaxLocation
    Created on : 4 Jan, 2024, 3:13:13 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<option value="">--select--</option>
<%
String selQ="select * from tbl_location where place_id='"+request.getParameter("pid")+"'";
ResultSet rs=con.selectCommand(selQ);
while(rs.next())
{
    %>
    <option value="<%=rs.getString("location_id")%>"><%=rs.getString("location_name")%></option>
    <%
}


%>