<%-- 
    Document   : WorkerComplaintView
    Created on : 17 Jun, 2024, 8:04:39 PM
    Author     : ashwi
--%>


<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View My Complaints</title>
        <style>
             .bg-img{
            background-image:url("../Assets/Templates/Main/images/worker1.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
                color:white;
                border-width: 3px;
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
            
            .button{
                background-color: yellow;
            }
            
        </style>
    </head>
    <div class="bg-img">
         <div style="background-color: #000000b8 !important;">
    </head>
     <%@include file="Head.jsp" %>
    <br><br>
    <body>

        <h3 class="fonth" align="center" align="center">Labour Complaints </h3>

        <table cellpadding="20" align="center">
            <tr>
                <th class="fonty">Sl.No</th>
                <th class="fonty">User Name</th> 
                <th class="fonty">Date</th>
                <th class="fonty">Complaint content</th>
                 


            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint f inner join tbl_user u on u.user_id=f.user_id where f.worker_id='" + session.getAttribute("wid") + "'";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td class="fontw" align="center">
                    <%=i%></td>
                <td class="fontw"><%=res.getString("user_name")%></td>
                <td class="fontw"><%=res.getString("complaint_date")%></td>
                <td class="fontw"><%=res.getString("complaint_content")%></td>
                
            </tr>
            <%
                }
            %>
        </table>
        <br><br>

        <h3 class="fonth" align="center">Work Complaints </h3>

            <table cellpadding="20" align="center">
            <tr>
                <th class="fonty">Sl.No</th>
                <th class="fonty">User Name</th>
                <th class="fonty">Date</th>
                <th class="fonty">Complaint content</th>

            </tr>
            <%
                int j = 0;
                String seleQry1 = "select * from tbl_complaint c inner join tbl_user u on u.user_id=c.user_id inner join tbl_workpost w on c.workpost_id=w.workpost_id inner join tbl_worker wk on w.worker_id=wk.worker_id where wk.worker_id='" + session.getAttribute("wid") + "'";
                ResultSet res1 = con.selectCommand(seleQry1);
                while (res1.next()) {
                    j++;
            %>
            <tr>
                <td class="fontw" align="center">
                    <%=j%></td>
                <td class="fontw"><%=res1.getString("user_name")%></td>
                <td class="fontw"><%=res1.getString("complaint_date")%></td>
                <td class="fontw"><%=res1.getString("complaint_content")%></td>
                
            </tr>
            <%
                }
            %>
        </table>

    
    </body>
    <br><br><br>
    <%@include file="Foot.jsp" %>
    </div>
        </div>
    </div>
</html>
