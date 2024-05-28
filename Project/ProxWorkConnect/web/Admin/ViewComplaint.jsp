<%-- 
    Document   : ViewComplaint
    Created on : 22 May, 2024, 1:34:34 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Complaint</title>
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
        <h1 class="fonth" align="center">Labour Complaint </h1>
        <table cellpadding="10" align="center">
            <tr>
                <th div class="fonty">Sl.No</th>
                <th div class="fonty">User Name</th> 
                <th div class="fonty">Worker Name</th> 
                <th div class="fonty">Date</th>
                <th div class="fonty">Complaint content</th>
                <th div class="fonty">Action</th>
                <th div class="fonty">Status</th>


            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint f inner join tbl_user u on u.user_id=f.user_id inner join tbl_worker w on w.worker_id=f.worker_id where w.worker_id!=''";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td div class="fontw" align="center">
                    <%=i%></td>
                <td div class="fontw"><%=res.getString("user_name")%></td>
                <td div class="fontw"><%=res.getString("worker_name")%></td>
                <td div class="fontw"><%=res.getString("complaint_date")%></td>
                <td div class="fontw"><%=res.getString("complaint_content")%></td>
                <td div class="fontw"><a href="ComplaintAction.jsp?pid=<%=res.getString("complaint_id")%>">Reply</a></td>
                <td div class="fontw">
                    <%

                        if (res.getString("complaint_status").equals("0")) {
                            out.print("Pending");
                        }
                        if (res.getString("complaint_status").equals("1")) {
                            out.print(res.getString("complaint_reply"));
                        }
                    %>
                </td>
            </tr>
            <%
                }
            %>
        </table><br><br>

        <h1 class="fonth" align="center">Work Complaint </h1>
        <table cellpadding="10" align="center">
            <tr>
                <th div class="fonty">Sl.No</th>
                <th div class="fonty">User Name</th> 
                <th div class="fonty">Worker Name</th> 
                <th div class="fonty">Date</th>
                <th div class="fonty">Complaint content</th>
                <th div class="fonty">Action</th>
                <th div class="fonty">Status</th>


            </tr>
            <%
                int j = 0;
                String seleQry1 = "select * from tbl_complaint c inner join tbl_user u on u.user_id=c.user_id inner join tbl_workpost w on c.workpost_id=w.workpost_id inner join tbl_worker wk on w.worker_id=wk.worker_id";
                ResultSet res1 = con.selectCommand(seleQry1);
                while (res1.next()) {
                    j++;
            %>
            <tr>
                <td  div class="fontw" align="center">
                    <%=j%></td>
                <td div class="fontw"><%=res1.getString("user_name")%></td>
                <td div class="fontw"><%=res1.getString("worker_name")%></td>
                <td div class="fontw"><%=res1.getString("complaint_date")%></td>
                <td div class="fontw"><%=res1.getString("complaint_content")%></td>
                <td div class="fontw"><a href="ComplaintAction.jsp?pid=<%=res1.getString("complaint_id")%>">Reply</a></td>
                <td div class="fontw">
                    <%

                        if (res1.getString("complaint_status").equals("0")) {
                            out.print("Pending");
                        }
                        if (res1.getString("complaint_status").equals("1")) {
                            out.print(res1.getString("complaint_reply"));
                        }
                    %>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
<br><br>
<%@include file="Foot.jsp" %>
        </div>
    </div>
</html>