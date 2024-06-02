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
          .fonth{
                 font-family: "Poppins", sans-serif;
                color: white;
                font-weight: bold; 
                font-weight: italic; 
            }
             .fonty{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8; 
            }
            .fontw{
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
        <h2 class="fonth">Request Notifications</h2>
        <table cellpadding="15" align="center">
                <tr>
                    <th class="fonty">Sl.no</th>
                    <th class="fonty">Labour</th>
                    <th class="fonty">Work Date</th>
                    <th class="fonty">Work Details</th>
                    <th class="fonty">Requested Date</th>
                    <th class="fonty">Status</th>
                    <th class="fonty">Action</th>
                </tr>
                <%
         
                 String selqry="select * from tbl_workrequest w inner join tbl_worker u on u.worker_id=w.worker_id where w.user_id='" + session.getAttribute("uid") + "'";
                ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td class="fontw"><%=i%></td>
                         <td class="fontw"><%=rs.getString("worker_name")%></td>
                         <td class="fontw"><%=rs.getString("work_date")%></td>
                         <td class="fontw"><%=rs.getString("request_details")%></td>
                         <td class="fontw"><%=rs.getString("request_date")%></td>
                         <td class="fontw">
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

                             else if(rs.getString("request_status").equals("4") || rs.getString("request_status").equals("5"))//payment requested
                             {
                                 out.println("Work completed"); 
                              }
                              else if(rs.getString("request_status").equals("6"))//payment done
                              {
                                 out.println("Payment Done"); 
                              }
                              else if(rs.getString("request_status").equals("7"))//finished
                              {
                                 out.println("Ended<br>");
                     
                                 %>
                                 <a href="Review.jsp?gid=<%=rs.getString("worker_id")%>">Rate Now</a>
                                 <%
                              }
                              else if(rs.getString("request_status").equals("8"))//visit site before accept
                              {
                                 out.println("Site will be visited"); 
                              }
                            %>  </td>
                         <td>
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
                              <div class="fontw">  Contact : <%=rs.getString("worker_contact")%></<br></div>
                              <a href="Complaint.jsp?cid=<%=rs.getString("worker_id")%>">Complaints</a><br>
                              <%
                               }
                              if(rs.getInt("request_status")==5)//payment requested
                              {
                               int worker_amt=Integer.parseInt(rs.getString("request_amount"));
                               int perc=(worker_amt/100)*5;
                               int total=worker_amt+perc;
                              %>  
                              
                              Amount : <%out.println(total);%><br>
                              Remarks : <%=rs.getString("request_remarks")%><br>
                              
                              <a href="Payment.jsp?yid=<%=rs.getString("workrequest_id")%>">Pay Now</a> 
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