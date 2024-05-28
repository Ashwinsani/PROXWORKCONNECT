<%-- 
    Document   : BookingAction
    Created on : 16 May, 2024, 11:35:48 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Action</title>
    <style>
          .bg-img{
            background-image:url("../Assets/Templates/Main/images/worker1.jpg");
            background-repeat: repeat;
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
            .fonth2{
                 font-family: "Poppins", sans-serif;
                color: white;
                font-weight: bold; 
                font-weight: italic; 
                
            } 
                
            .font{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8;
            }
                  
            .font1{
                font-family: "Poppins", sans-serif;
                color: white;
                
            }
            
            </style>
    </head>
    
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>  
    <br>  <br>
   
    <body>

     <%
         if(request.getParameter("aid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='1' where request_id='"+request.getParameter("aid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("rid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='2' where request_id='"+request.getParameter("rid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("tid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='3' where request_id='"+request.getParameter("tid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("eid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='4' where request_id='"+request.getParameter("eid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         
         if(request.getParameter("fid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='7' where request_id='"+request.getParameter("fid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
        %>
        <div align="center">
        <h2 class="fonth2">New Booking</h2>
        <table cellpadding="15" align="center">
                <tr>
                    <th class="font">Sl.no</th>
                    <th class="font">Booking From</th>
                    <th class="font">Work Date</th>
                    <th class="font">Work Details</th>
                    <th class="font">Address</th>
                    <th class="font">Contact</th>
                    <th class="font">Requested Date</th>
                    <th class="font">Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='0'";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td class="font1"><%=i%></td>
                         <td class="font1"><%=rs.getString("user_name")%></td>
                         <td class="font1"><%=rs.getString("work_date")%></td>
                         <td class="font1"><%=rs.getString("request_details")%></td>
                         <td class="font1"><%=rs.getString("address")%></td>
                         <td class="font1"><%=rs.getString("user_contact")%></td>
                         <td class="font1"><%=rs.getString("request_date")%></td>
                         
                         
                          <td class="font1"><a href="BookingAction.jsp?aid=<%=rs.getString("request_id")%>">Accept</a>
                         |<a href="BookingAction.jsp?rid=<%=rs.getString("request_id")%>">Reject</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
                     <br><br><br> 
                     <h2 class="fonth2">Accepted Requests</h2>         
                <table cellpadding="15" align="center">
                <tr>
                    <th class="font">Sl.no</th>
                    <th class="font">Booking From</th>
                    <th class="font">Work Date</th>
                    <th class="font">Work Details</th>
                    <th class="font">Address</th>
                    <th class="font">Contact</th>
                    <th class="font">Requested Date</th>
                    <th class="font">Status</th>
                    <th class="font">Action</th>  
                </tr>
        <%
                 String selqry1="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='1' or w.request_status='3' or w.request_status='4' or w.request_status='5' or w.request_status='6' or w.request_status='7'";
                 ResultSet rs1=con.selectCommand(selqry1);
                 int j=0;
                 while(rs1.next())
                 {
                     j++;
                     %>
                     <tr>
                         <td class="font1"><%=j%></td>
                         <td class="font1"><%=rs1.getString("user_name")%></td>
                         <td class="font1"><%=rs1.getString("work_date")%></td>
                         <td class="font1"><%=rs1.getString("request_details")%></td>
                         <td class="font1"><%=rs1.getString("address")%></td>
                         <td class="font1"><%=rs1.getString("user_contact")%></td>
                         <td class="font1"><%=rs1.getString("request_date")%></td>
                         <td class="font1">
                    <%
                    if(rs1.getString("request_status").equals("1"))
                    {
                    %>
                    <a href="BookingAction.jsp?tid=<%=rs1.getString("request_id")%>">Start work</a>
                    <%
                    }
                    if(rs1.getString("request_status").equals("3"))
                    {
                    %>
                    <a href="BookingAction.jsp?eid=<%=rs1.getString("request_id")%>">End work</a>
                    <%
                    }
                    else if(rs1.getString("request_status").equals("6"))
                    {
                        out.println("Payment Received");
                    }
                    else if(rs1.getString("request_status").equals("7"))
                    {
                        out.println("Completed");
                    }
                    
                    else if(rs1.getString("request_status").equals("4"))
                    {
                    %>
                    <a href="PayBooking.jsp?nid=<%=rs1.getString("request_id")%>">Pay Request</a>
                    <%
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
                             <a href="BookingAction.jsp?rid=<%=rs1.getString("request_id")%>">Reject</a>
                     <%
                     }
                    if(rs1.getString("request_status").equals("6"))
                    {
                    %>
                         <a href="BookingAction.jsp?fid=<%=rs1.getString("request_id")%>">Finish</a>
                    <%
                    }                                           
                     %> 
                     </td>  
                     </tr>
                     <%
                 }
                     %>       
             </table>
              <br><br><br>    
             <h2 class="fonth2">Rejected Requests</h2>         
                  <table cellpadding="15" align="center">
                <tr>
                   <th class="font">Sl.no</th>
                    <th class="font">Booking From</th>
                    <th class="font">Work Date</th>
                    <th class="font">Work Details</th>
                    <th class="font">Address</th>
                    <th class="font">Contact</th>
                    <th class="font">Requested Date</th>
                    <th class="font">Action</th>   
                </tr>
        <%
                 String selqry2="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='2'";
                 ResultSet rs2=con.selectCommand(selqry2);
                 int k=0;
                 while(rs2.next())
                 {
                     k++;
                     %>
                     <tr>
                         <td class="font1"><%=k%></td>
                         <td class="font1"><%=rs2.getString("user_name")%></td>
                         <td class="font1"><%=rs2.getString("work_date")%></td>
                         <td class="font1"><%=rs2.getString("request_details")%></td>
                         <td class="font1"><%=rs2.getString("address")%></td>
                         <td class="font1"><%=rs2.getString("user_contact")%></td>
                         <td class="font1"><%=rs2.getString("request_date")%></td>
                         
                          <td class="font1"><a href="BookingAction.jsp?aid=<%=rs2.getString("request_id")%>">Accept</a>
                         </td>
                     </tr>
                     <%
                 }
                     %>      
       </div>
    </body>
    <br><br><br>
    <%@include file="Foot.jsp" %>
        </div>
    </div>
</html>
