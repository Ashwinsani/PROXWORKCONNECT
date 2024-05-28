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
        <title>District Page</title>
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
        <div class="font0">
        <%
          if(request.getParameter("save")!=null)
          {
              if(request.getParameter("disid").equals(""))
              {   
              String insqry="insert into tbl_district(district_name)values('"+request.getParameter("disname")+"')";
              con.executeCommand(insqry);
              }
              else
              {
                  String upqry="update tbl_district set district_name='"+request.getParameter("disname")+"' where district_id='"+request.getParameter("disid")+"'";
                  con.executeCommand(upqry);
                  response.sendRedirect("District.jsp");
              }
          }
          if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_district where district_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("District.jsp");
          }
          String editid="";
          String editname="";
          if(request.getParameter("eid")!=null)
          {
              String selqry1="select * from tbl_district where district_id='"+request.getParameter("eid")+"'";  
              ResultSet rs1=con.selectCommand(selqry1);
              rs1.next();
              editid=rs1.getString("district_id");
              editname=rs1.getString("district_name");
          }
        %>
        <form method="post">
            <table  cellpadding="10" align="center">
                <tr>
                <td>District</td>
                <td><input class="text-box" type="text" name="disname" value="<%=editname%>" placeholder="Enter name">
                    <input type="hidden" name="disid" value="<%=editid%>">
                </td>
                </tr>
                <br>
                
                <tr>
         
                <td colspan="2" align="center"><input type="submit" name="save" value="Save" class="button">
                    <input type="reset" name="cancel" value="Cancel" class="button"></td>
                </tr>
            </table><br>
            <table cellpadding="15" align="center">
                <tr>
                    <th class="font11">Sl.no</th>
                    <th class="font11">District</th>
                    <th class="font11">Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_district";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td class="font0"><%=i%></td>
                         <td class="font0"><%=rs.getString("district_name")%></td>
                          <td class="font0"><a href="District.jsp?did=<%=rs.getString("district_id")%>">Delete</a>
                         |<a href="District.jsp?eid=<%=rs.getString("district_id")%>">Edit</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
          </table>
        </form>
        </div>
    </body>
    <br> <br> <br> <br>
     <%@include file="Foot.jsp" %>
     </div>
    </div>
</html>