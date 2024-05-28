<%-- 
    Document   : WorkerVerification
    Created on : 11 Jan, 2024, 1:48:09 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Verification</title>
    <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/Admin.jpg");
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
            .button{
                background-color: #e0e032c2;
            }
            .fontw{
                font-family: "Poppins", sans-serif;
                color: white;
            }
            </style>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    </head>
    <body>
     <%
         if(request.getParameter("aid")!=null)
         {
                  String upqry="update tbl_worker set worker_isactive='1' where worker_id='"+request.getParameter("aid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("WorkerVerification.jsp");
         }
         }
         if(request.getParameter("rid")!=null)
         {
                  String upqry="update tbl_worker set worker_isactive='2' where worker_id='"+request.getParameter("rid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("WorkerVerification.jsp");
         }
         }
         
        %>
        <br><Br>
        <div align="center">
        <h2 class="fonth">New Worker</h2>
        <table cellpadding="10" align="center">
                <tr>
                    <th div class="fonty">Sl.no</th>
                    <th div class="fonty">Name</th>
                    <th div class="fonty">Contact</th>
                    <th div class="fonty" >Proof</th>
                    <th div class="fonty">Place</th>
                    <th div class="fonty">Workertype</th>
                    <th div class="fonty">Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='0'";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td div class="fontw"><%=i%></td>
                         <td div class="fontw"<%=rs.getString("worker_name")%></td>
                         <td div class="fontw"><%=rs.getString("worker_contact")%></td>
                         <td div class="fontw"><%=rs.getString("worker_photo")%></td>
                         <td div class="fontw"><%=rs.getString("worker_proof")%></td>
                         <td div class="fontw"><%=rs.getString("place_name")%></td>
                         <td div class="fontw"><%=rs.getString("workertype_name")%></td>
                         
                         
                          <td><a href="WorkerVerification.jsp?aid=<%=rs.getString("worker_id")%>">Accept</a>
                         |<a href="WorkerVerification.jsp?rid=<%=rs.getString("worker_id")%>">Reject</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
                      <br><br>
            <h2 class="fonth">Accepted Worker</h2>         
                <table cellpadding="10" align="center">
                <tr>
                    
                    <th div class="fonty">Sl.no</th>
                    <th div class="fonty">Name</th>
                    <th div class="fonty">Contact</th>
                    <th div class="fonty">Photo</th>
                    <th div class="fonty">Proof</th>
                    <th div class="fonty">Place</th>
                    <th div class="fonty">Workertype</th>
                    <th div class="fonty">Action</th>
                    </div>
                </tr>
        <%
                 String selqry1="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='1'";
                 ResultSet rs1=con.selectCommand(selqry1);
                 int j=0;
                 while(rs1.next())
                 {
                     j++;
                     %>
                     <tr>
                         <td div class="fontw"><%=j%></td>
                         <td div class="fontw"><%=rs1.getString("worker_name")%></td>
                         <td div class="fontw"><%=rs1.getString("worker_contact")%></td>
                         <td div class="fontw"><%=rs1.getString("worker_photo")%></td>
                         <td div class="fontw"><%=rs1.getString("worker_proof")%></td>
                         <td div class="fontw"><%=rs1.getString("place_name")%></td>
                         <td div class="fontw"><%=rs1.getString("workertype_name")%></td>
                         
                          <td>
                         <a href="WorkerVerification.jsp?rid=<%=rs1.getString("worker_id")%>">Reject</a></td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
             <br><br>
             <h2 class="fonth">Rejected Worker</h2>         
                  <table cellpadding="10" align="center">
                <tr>
                    <th div class="fonty">Sl.no</th>
                    <th div class="fonty">Name</th>
                    <th div class="fonty">Contact</th>
                    <th  div class="fonty">Photo</th>
                    <th div class="fonty">Proof</th>
                    <th div class="fonty">Place</th>
                    <th div class="fonty">Workertype</th>
                    <th div class="fonty">Action</th>
                </tr>
        <%
                 String selqry2="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='2'";
                 ResultSet rs2=con.selectCommand(selqry2);
                 int k=0;
                 while(rs2.next())
                 {
                     k++;
                     %>
                     <tr>
                         <td div class="fontw"><%=k%></td>
                         <td div class="fontw"><%=rs2.getString("worker_name")%></td>
                         <td div class="fontw"><%=rs2.getString("worker_contact")%></td>
                         <td div class="fontw"><%=rs2.getString("worker_photo")%></td>
                         <td div class="fontw"><%=rs2.getString("worker_proof")%></td>
                         <td div class="fontw"><%=rs2.getString("place_name")%></td>
                         <td div class="fontw"><%=rs2.getString("workertype_name")%></td>
                         
                          <td><a href="WorkerVerification.jsp?aid=<%=rs2.getString("worker_id")%>">Accept</a>
                         </td>
                     </tr>
                     <%
                 }
                     %>      
             </table>    
            
        </div>     
    </body>
    <br><br>
<%@include file="Foot.jsp" %>
        </div>
    </div>
</html>