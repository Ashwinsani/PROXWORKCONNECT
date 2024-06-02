<%-- 
    Document   : ComplaintAction
    Created on : 22 May, 2024, 1:24:00 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Action</title>
    <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/Admin.jpg");
            background-repeat: no-repeat;
            background-size:cover;
            background-position: center;
            }
             .text-box{
                background-color: transparent;
                color:white;
                border-radius: 10px;
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
                background-color: #e0e032c2;
            </style>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    </head>
        <body> 
            <br>   
            
        <%
            String seleQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id inner join tbl_worker w on w.worker_id=f.worker_id where f.complaint_id ='" + request.getParameter("pid") + "'";
            ResultSet ress = con.selectCommand(seleQry);
            if (ress.next()) 
            {
        %>
        <table cellpadding="10" align="center">
            <tr>
                <th class="fonty">User Name</th> 
                <th class="fonty">Worker Name</th> 
                <th class="fonty">Date</th>
                <th class="fonty">Complaint content</th>
            </tr>
            
            <tr>
                <td class="fontw"><%=ress.getString("user_name")%></td>
                <td class="fontw"><%=ress.getString("worker_name")%></td>
                <td class="fontw"><%=ress.getString("complaint_date")%></td>
                <td class="fontw"><%=ress.getString("complaint_content")%></td>
                
            </tr>
           
            <%
                }
            %>
        </table>
        
       
           <%
            String seleQry1 = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id inner join tbl_workpost p on p.workpost_id=f.workpost_id inner join tbl_worker w on w.worker_id=p.worker_id where f.complaint_id ='" + request.getParameter("pid") + "'";
            ResultSet res = con.selectCommand(seleQry1);
            if (res.next()) 
            {
        %>
        <table cellpadding="10" align="center">
            <tr>
                <th class="fonty">User Name</th> 
                <th class="fonty">Worker Name</th> 
                <th class="fonty">Date</th>
                <th class="fonty">Complaint content</th>
            </tr>
            <tr>
                <td class="fontw"><%=res.getString("user_name")%></td>
                <td class="fontw"><%=res.getString("worker_name")%></td>
                <td class="fontw"><%=res.getString("complaint_date")%></td>
                <td class="fontw"><%=res.getString("complaint_content")%></td>
            </tr>
        
            <%
                }
            %>
        </table>    
        
            <%
            if(request.getParameter("btn_submit")!=null)
            {
                String uq = "update tbl_complaint set complaint_reply='"+request.getParameter("reply_content")+"' where complaint_id = '"+request.getParameter("pid")+"'";
                if(con.executeCommand(uq)){
                    String up= "update tbl_complaint set complaint_status='1' where complaint_id ='"+request.getParameter("pid")+"'"  ;
                    if(con.executeCommand(up)){
                    %>
                <script type="text/javascript" >
                    alert("Complaint Submitted");
                    setTimeout(function() {
                    window.location.href = 'AdminHomePage.jsp'
                    }, 1000);
                </script>
            <%
                    } 
                    else{
                     String up1= "update tbl_complaint set complaint_status='0' where complaint_id ='"+request.getParameter("pid")+"'"  ;
                     con.executeCommand(up1);
                    }
                }
            }   
            %>
            
  
            
            </table>
    </body>
        <form method="post" >
        <table cellpadding="10" align="center">
        <tr>
        <td class="fontw">Complaint Reply</td>
        <td>
        <textarea class="text-box" name="reply_content" rows="6" cols="20"></textarea>
        </td>
        </tr>
        <tr>
        <td colspan="2"  align="center"><input type="submit" class="button"  name="btn_submit" value="Register">&nbsp&nbsp
            <input type="reset" name="btn_reset" class="button" value="Reset"</td>
        </tr>
        </table>
        </form>
    </body>
 <br> <br> <br> <br>
     <%@include file="Foot.jsp" %>
     </div>
    </div>
</html>
        

