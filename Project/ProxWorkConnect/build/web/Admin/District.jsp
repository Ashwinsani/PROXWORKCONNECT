<%-- 
    Document   : design
    Created on : 26 Oct, 2023, 2:08:36 PM
    Author     : ashwi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getParameter("btnsave")!=null)
            {   
                if(request.getParameter("txtid").equals(""))
                {
                String insqry="insert into tbl_district(district_name)values('"+request.getParameter("txtdis")+"')";
                con.executeCommand(insqry);
                }
                else
                {
                    String upqry="update tbl_district set district_name='"+request.getParameter("txtdis")+"' where district_id='"+request.getParameter("txtid")+"'";
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
            String editid=" ";
          String editname=" ";
          if(request.getParameter("eid")!=null)
          {
              String selqry1="select *from tbl_district where district_id='"+request.getParameter("eid")+"'";
              ResultSet rs1=con.selectCommand(selqry1);
              rs1.next();
              editid=rs1.getString("district_id");  
              editname=rs1.getString("district_name");
          }
        %>
        <form method="post">
            <table border="1" align="center">
                <tr>
                    <td>District</td>
                    <td><input type="text" name="txtdis" value="<%=editname%>">
                        <input type="hidden" name="txtid" value="<%=editid%>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnsave" value="Save">
                        <input  type="reset" name="btnc" value="Cancel"></td>
                </tr>
            </table><br>
            <table border="1" align="center">
                    <tr>
                        <th>SL.no</th>
                        <th>District name</th>
                        <th>type</th>
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
                          <td><%=i%></td>
                          <td><%=rs.getString("district_name")%></td>
                          <td><a href="District.jsp?did=<%=rs.getString("district_id")%>">
                                  Delete</a>|<a href="District.jsp?eid=<%=rs.getString("district_id")%>">Edit</a></td>
                      </tr>
                      <%
                  }
                  %>
                  
                  
                    </table>
        </form>
    </body>
</html>
