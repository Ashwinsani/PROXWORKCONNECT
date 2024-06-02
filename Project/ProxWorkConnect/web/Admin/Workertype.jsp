<%-- 
    Document   : design
    Created on : 26 Oct, 2023, 2:08:36 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Workertype</title>
   <style>
         .bg-img{
            background-image:url("../Assets/Templates/Main/images/Admin.jpg");
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
                 .fonth22{
                 font-family: "Poppins", sans-serif;
                color: white;
                font-weight: bold; 
                font-weight: italic; 
                 }
                
            .font0{
                font-family: "Poppins", sans-serif;
                color: #ffef19b8;
            }
            .button{
                background-color: #e0e032c2;
            }
            .font11{
                font-family: "Poppins", sans-serif;
                color: white;
            }
            </style>
    </head>
    <div class="bg-img">
        <div style="background-color: #000000b8 !important;">
    <%@include file="Head.jsp" %>
    </head>
    <body>
        <br><br>
        <div class="font0">
         <%
          if(request.getParameter("save")!=null)
          {
              if(request.getParameter("typeid").equals(""))
              {   
              String insqry="insert into tbl_workertype(workertype_name)values('"+request.getParameter("typename")+"')";
              con.executeCommand(insqry);
              }
              else
              {
                  String upqry="update tbl_workertype set workertype_name='"+request.getParameter("typename")+"' where workertype_id='"+request.getParameter("typeid")+"'";
                  con.executeCommand(upqry);
                  response.sendRedirect("Workertype.jsp");
              }
          }
          if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_workertype where workertype_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Workertype.jsp");
          }
          String editid="";
          String editname="";
          if(request.getParameter("eid")!=null)
          {
              String selqry1="select * from tbl_workertype where workertype_id='"+request.getParameter("eid")+"'";  
              ResultSet rs1=con.selectCommand(selqry1);
              rs1.next();
              editid=rs1.getString("workertype_id");
              editname=rs1.getString("workertype_name");
          }
        %>
        <form method="post">
            <table cellpadding="10" align="center">
                <tr>
                <td>Worker Type</td>
                <td><input type="text" name="typename" value="<%=editname%>" placeholder="Enter Worker Type">
                    <input type="hidden" name="typeid" value="<%=editid%>"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" class="button" name="save" value="Save">
                    <input type="reset" class="button" name="cancel" value="Cancel"></td>
                </tr>
            </table><br>
            <table cellpadding="10" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Workertype</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workertype";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td class="font11"><%=i%></td>
                         <td class="font11"><%=rs.getString("workertype_name")%></td>
                         <td class="font11"><a href="Workertype.jsp?did=<%=rs.getString("workertype_id")%>">Delete</a>
                         |<a href="Workertype.jsp?eid=<%=rs.getString("workertype_id")%>">Edit</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
        </form>
 </body>
    <br> <br> <br> <br>
     <%@include file="Foot.jsp" %>
        </div>
     </div>
    </div>
</html>