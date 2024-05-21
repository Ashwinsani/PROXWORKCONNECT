<%-- 
    Document   : RequestAction
    Created on : 16 May, 2024, 11:36:50 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requests</title>
    </head>
    <body>
        <body>
     <%
         if(request.getParameter("aid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='1' where workrequest_id='"+request.getParameter("aid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("rid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='2' where workrequest_id='"+request.getParameter("rid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("tid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='3' where workrequest_id='"+request.getParameter("tid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("fid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='4' where workrequest_id='"+request.getParameter("fid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("nid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='5' where workrequest_id='"+request.getParameter("nid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }         
        %>
        <div align="center">
        <h2>New Requests</h2>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Request From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='0'";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><%=rs.getString("user_name")%></td>
                         <td><%=rs.getString("work_date")%></td>
                         <td><%=rs.getString("request_details")%></td>
                         <td><%=rs.getString("address")%></td>
                         <td><%=rs.getString("user_contact")%></td>
                         <td><%=rs.getString("request_date")%></td>
                         
                         
                          <td><a href="RequestAction.jsp?aid=<%=rs.getString("workrequest_id")%>">Accept</a>
                         |<a href="RequestAction.jsp?rid=<%=rs.getString("workrequest_id")%>">Reject</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
            <h2>Accepted Requests</h2>         
                <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Request From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Status</th>
                    <th>Action</th>
                     
                </tr>
        <%
                 String selqry1="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='1' or w.request_status='3' or w.request_status='4'";
                 ResultSet rs1=con.selectCommand(selqry1);
                 int j=0;
                 while(rs1.next())
                 {
                     j++;
                     %>
                     <tr>
                         <td><%=j%></td>
                         <td><%=rs1.getString("user_name")%></td>
                         <td><%=rs1.getString("work_date")%></td>
                         <td><%=rs1.getString("request_details")%></td>
                         <td><%=rs1.getString("address")%></td>
                         <td><%=rs1.getString("user_contact")%></td>
                         <td><%=rs1.getString("request_date")%></td>
                         
                         <td>
                      
                    <%
                    if(rs1.getString("request_status").equals("1"))
                    {
                    %>
                    <a href="RequestAction.jsp?tid=<%=rs1.getString("workrequest_id")%>">Start work</a>
                    <%
                    }
                    if(rs1.getString("request_status").equals("3"))
                    {
                    %>
                    <a href="RequestAction.jsp?fid=<%=rs1.getString("workrequest_id")%>">End work</a>
                    <%
                    }
                    if(rs1.getString("request_amount")==null){
                    if(rs1.getString("request_status").equals("4"))
                    {
                    %>
                    <a href="PayRequest.jsp?nid=<%=rs1.getString("workrequest_id")%>">Pay Request</a>
                    <%
                    }
                    }
                    else
                    {
                    %>
                    Amount : <%=rs1.getString("request_amount")%><br>
                   <%
                    out.println("Payment pending");   
                    }
                      %> 
                   
                         </td>
                    <td>
                     <%
                     int a = Integer.parseInt(rs1.getString("request_status"));
                     if(a<2)
                     {
                     %>      
                             <a href="RequestAction.jsp?rid=<%=rs1.getString("workrequest_id")%>">Reject</a>
                     <%
                     }
                     %>
                     </td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
             <h2>Rejected Requests</h2>         
                  <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Request From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Action</th>   
                </tr>
        <%
                 String selqry2="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='2'";
                 ResultSet rs2=con.selectCommand(selqry2);
                 int k=0;
                 while(rs2.next())
                 {
                     k++;
                     %>
                     <tr>
                         <td><%=k%></td>
                         <td><%=rs2.getString("user_name")%></td>
                         <td><%=rs2.getString("work_date")%></td>
                         <td><%=rs2.getString("request_details")%></td>
                         <td><%=rs2.getString("address")%></td>
                         <td><%=rs2.getString("user_contact")%></td>
                         <td><%=rs2.getString("request_date")%></td>
                         
                          <td><a href="RequestAction.jsp?aid=<%=rs2.getString("workrequest_id")%>">Accept</a>
                         </td>
                     </tr>
                     <%
                 }
                     %>      
             </table>    
            
        </div>     
    </body>
</html>