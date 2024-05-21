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
    </head>
    <body>
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
            <table border="3" align="center">
                <tr>
                <td>Worker Type</td>
                <td><input type="text" name="typename" value="<%=editname%>" placeholder="Enter Worker Type">
                    <input type="hidden" name="typeid" value="<%=editid%>"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="save" value="Save">
                    <input type="reset" name="cancel" value="Cancel"></td>
                </tr>
            </table><br>
            <table border="1" align="center">
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
                         <td><%=i%></td>
                         <td><%=rs.getString("workertype_name")%></td>
                         <td><a href="Workertype.jsp?did=<%=rs.getString("workertype_id")%>">Delete</a>
                         |<a href="Workertype.jsp?eid=<%=rs.getString("workertype_id")%>">Edit</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
        </form>
    </body>
</html>
