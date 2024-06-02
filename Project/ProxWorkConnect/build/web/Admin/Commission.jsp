<%-- 
    Document   : Commission
    Created on : 30 May, 2024, 11:30:29 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commission Details</title>
       <style>
    .bg-img{
            background-image:url("../Assets/Templates/Main/images/Admin.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
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
              <h2 div class="font" align="center">Commission Details</h2><br><br>
        <h3 div class="fonth2" align="center">Labour Bookings</h3>

            <table cellpadding="10" align="center">
            <tr>
                <th class="font">Sl.No</th>
                <th class="font">User Name</th> 
                <th class="font">Labour Name</th> 
                <th class="font">Total Payment</th> 
                <th class="font">Allowance</th>


            </tr>
            <%
                int j = 0;
                String seleQry1 = "select * from tbl_workrequest wr inner join tbl_user u on u.user_id=wr.user_id inner join tbl_worker w on w.worker_id=wr.worker_id where request_status='7'";
                ResultSet res1 = con.selectCommand(seleQry1);
                while (res1.next()) {
                    j++;
            %>
            <tr>
                <td class="font1" align="center">
                    <%=j%></td>
                <td class="font1"><%=res1.getString("user_name")%></td>
                <td class="font1"><%=res1.getString("worker_name")%></td>
                <td class="font1"><%=res1.getString("request_amount")%></td>
                
                <td class="font1">
                    <%
                      int total_amt=Integer.parseInt(res1.getString("request_amount"));
                      double perc=total_amt*0.05;
                      out.println(perc);
                    %>
                    
                </td>
               
            </tr>
            <%
                }
            %>
        </table>
        <br><br>
         <h3 div class="fonth2" align="center">Work Bookings</h3>

            <table cellpadding="10" align="center">
            <tr>
                <th class="font">Sl.No</th>
                <th class="font">User Name</th> 
                <th class="font">Labour Name</th> 
                <th class="font">Total Payment</th> 
                <th class="font">Allowance</th>


            </tr>
            <%
                int i = 0;
                String seleQry = "select * from tbl_workpostrequest wr inner join tbl_user u on u.user_id=wr.user_id inner join tbl_workpost p on p.workpost_id=wr.workpost_id inner join tbl_worker w on w.worker_id=p.worker_id where request_status='6'";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td class="font1" align="center">
                    <%=i%></td>
                <td class="font1"<%=res.getString("user_name")%></td>
                <td class="font1"><%=res.getString("worker_name")%></td>
                <td class="font1"><%=res.getString("workpost_amount")%></td>
                
                <td class="font1">
                    <%
                      int total_amt=Integer.parseInt(res.getString("workpost_amount"));
                      double perc=total_amt*0.05;
                      out.println(perc);
                    %>
                    
                </td>
               
            </tr>
            <%
                }
            %>
        </table>
    </body>
<br><br>  <br><br>
     <%@include file="Foot.jsp" %>
        </div>
    </div>
</html>