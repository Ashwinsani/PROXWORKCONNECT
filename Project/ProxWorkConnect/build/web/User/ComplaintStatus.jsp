 <%-- 
    Document   : ComplaintStatus
    Created on : 21 May, 2024, 10:49:52 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Status</title>
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
            .fontc{
                 font-family: "Poppins", sans-serif;
                color: white;
                font-weight: bold; 
                font-weight: italic; 
                
             .font00{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8; 
            }
            .fontcom{
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
    <%@include file="Head.jsp" %>
    <br><br>
    <body>
        <h1  class="fontc" align="center">Labour Complaint Status </h1>
        <table cellpadding="15" align="center">
            <tr>
                <th class="font00">Sl.No</th>
                <th class="font00">Date</th>
                <th class="font00">Labour</th>
                <th class="font00">Complaint content</th>
                <th class="font00">Reply</th>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint c  inner join tbl_worker w on w.worker_id=c.worker_id where user_id='"+session.getAttribute("uid") +"'";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td  align="center"></td>
                    <td><%=i%></td>
                <td class="fontcom"><%=res.getString("complaint_date")%></td>
                <td class="fontcom"><%=res.getString("worker_name")%></td>
                <td class="fontcom"><%=res.getString("complaint_content")%></td>
                <td class="fontcom">
               <%
                    if(res.getString("complaint_status").equals("0"))
                    {
                        out.print("Pending");
                    }
                    if(res.getString("complaint_status").equals("1"))
                    {
                        out.print(res.getString("complaint_reply"));
                    }
                    
                %>
            </tr>
            <%
                }
            %>
        </table>
        
        <h1 class="fonthc" align="center"> Worker Complaint Status </h1>
        <table cellpadding="15" align="center">
            <tr>
                <th class="font00">Sl.No</th>
                <th class="font00">Date</th>
                <th class="font00">Labour</th>
                <th class="font00">Complaint content</th>
                <th class="font00">Reply</th>
            </tr>
            <% int j = 0;
                  String seleQry1 = "select * from tbl_complaint c inner join tbl_user u on u.user_id=c.user_id inner join tbl_workpost w on c.workpost_id=w.workpost_id inner join tbl_worker wk on w.worker_id=wk.worker_id where c.user_id='"+session.getAttribute("uid") +"'";
                ResultSet res1 = con.selectCommand(seleQry1);
                while (res1.next()) {
                    j++;
            %>
            <tr>
                <td class="font1" align="center">
                    <%=i%></td>
                <td class="fontcom"><%=res1.getString("complaint_date")%></td>
                <td class="fontcom"><%=res1.getString("worker_name")%></td>
                <td class="fontcom"><%=res1.getString("complaint_content")%></td>
                <td class="fontcom">
               <%
                    if(res1.getString("complaint_status").equals("0"))
                    {
                        out.print("Pending");
                    }
                    if(res1.getString("complaint_status").equals("1"))
                    {
                        out.print(res1.getString("complaint_reply"));
                    }
                    
                %>
            </tr>
            <%
                }
            %>
        </table>
/div>
    </body>
    <br><br><br>
    <%@include file="Foot.jsp" %>
        </div>
    </div>
</html>
