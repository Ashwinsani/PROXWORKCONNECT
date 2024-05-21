<%-- 
    Document   : Searchworker.jsp
    Created on : 15 Feb, 2024, 11:03:25 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Search Worker</title>
    </head>
    <body>
        <form method="POST">
        <table border="3" align="center">
       <tr>
                    <td>District</td>
                    <td>
                        <select name="ddis" onchange="getPlace(this.value)">
                            <option>--select--</option>
                            <%
                              String selqry1="select * from tbl_district";
                              ResultSet rs1=con.selectCommand(selqry1);
                              while(rs1.next())
                              {
                              
                            %>
                            <option value="<%=rs1.getString("district_id")%>"><%=rs1.getString("district_name")%></option>
                            <%
                              }
                            %>
                            
                        </select>
                    </td>
                <tr>
                    <td>Place</td>
                    <td>
                        <select name="ddlplace" id="selplace">
                            <option>--select--</option>
                            
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td>Worker Type</td>
                    <td>
                        <select name="ddltype">
                            <option>--select--</option>
                            <%
                              String selqry2="select * from tbl_workertype";
                              ResultSet rs2=con.selectCommand(selqry2);
                              while(rs2.next())
                              {
                              
                            %>
                            <option value="<%=rs2.getString("workertype_id")%>"><%=rs2.getString("workertype_name")%></option>
                            <%
                              }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="search" value="Search">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
        </table><br>
        <table border="1" align="center">
            <tr>
            <th>Sl.no</th>
            <th>District</th>
            <th>Place</th>
            <th>WorkerType</th>
            <th>Action</th>
            </tr>
            <%
              if(request.getParameter("search")!=null){
                 String selqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_district d on d.district_id=p.district_id where p.place_id='"+request.getParameter("ddlplace")+"'and t.workertype_id='"+request.getParameter("ddltype")+"'";
                ResultSet rs=con.selectCommand(selqry);
                int i=0;
                while(rs.next()){
                 i++; 
                              
            %>
            <tr>
                  <td><%=i%></td>
                  <td><%=rs.getString("district_name")%></td>
                  <td><%=rs.getString("place_name")%></td>
                  <td><%=rs.getString("workertype_name")%></td>
                  <%
                }
                  }
                  %>
            </tr> 
             </table>
        </form>                     
    </body>
    <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function getPlace(did)
                            {
                              
                           //  alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/AjaxPlaces.jsp?pid=" + did,
                                success: function(result){
                                    $("#selplace").html(result);
                                }
                            })
                            }
                           
                        </script>
</html>

       

