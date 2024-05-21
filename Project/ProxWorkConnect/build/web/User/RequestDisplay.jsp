<%-- 
    Document   : RequestDisplay
    Created on : 16 May, 2024, 1:04:15 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RequestDisplay</title>
        <style>
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
    <body>
        <br><br>
          <div align="center">
        <h2 class="fonth2">Request Notifications</h2>
        <table cellpadding="15" align="center">
                <tr>
                    <th class="font">Sl.no</th>
                    <th class="font">Labour</th>
                    <th class="font">Work Date</th>
                    <th class="font">Work Details</th>
                    <th class="font">Requested Date</th>
                    <th class="font">Status</th>
                    <th class="font">Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workrequest w inner join tbl_worker u on u.worker_id=w.worker_id";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td class="font1"><%=i%></td>
                         <td class="font1"><%=rs.getString("worker_name")%></td>
                         <td class="font1"><%=rs.getString("work_date")%></td>
                         <td class="font1"><%=rs.getString("request_details")%></td>
                         <td class="font1"><%=rs.getString("request_date")%></td>
                         <td class="font1">
                             <%
                              if(rs.getString("request_status").equals("0"))
                              {
                                out.println("Request pending");
                                }
                              else if(rs.getString("request_status").equals("1"))
                                {
                                 out.println("Request accepted");
                                 }
                              else if(rs.getString("request_status").equals("2"))
                                {
                                    out.println("Request rejected");
                                }
                              else if(rs.getString("request_status").equals("3"))
                              {
                                 out.println("Work started"); 
                              }
                              else if(rs.getString("request_status").equals("4"))
                              {
                                 out.println("Work completed"); 
                              }
                       %>  </td>
                         <td class="font1">
                             <%
                               if (rs.getInt("request_status")==0)
                                {
                                    out.println();
                                }
                               else if (rs.getInt("request_status")==2)
                                {
                                    out.println();
                                }
                               else{
                              %>
                              Contact : <%=rs.getString("worker_contact")%><br>
                              <%
                               }
                              if(rs.getString("request_status").equals("4"))
                              {
                               int worker_amt=Integer.parseInt(rs.getString("request_amount"));
                               int perc=(worker_amt/100)*10;
                               int total=worker_amt+perc;
                              %>  
                              
                              Amount : <%out.println(total);%><br>
                              Remarks : <%=rs.getString("request_remarks")%><br>
                              
                              <a class="font1" href="Payment.jsp">Pay Now</a> 
                             <%
                                 }
                              %>
                         </td>
                         
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
          </div>
    </body>
    <br><br><br>
    <%@include file="Foot.jsp" %>
        </div>
    </div>
</html>