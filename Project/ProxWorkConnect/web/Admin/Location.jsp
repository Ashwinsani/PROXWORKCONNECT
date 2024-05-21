<%-- 
    Document   : Location.jsp
    Created on : 7 Dec, 2023, 10:50:40 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Location</title>
    </head>
    <body>
        <%
             if(request.getParameter("save")!=null)
             {
                                  
                   String insqry="insert into tbl_location(location_name,place_id)values('"+request.getParameter("locname")+"','"+request.getParameter("selpla")+"')";
                   con.executeCommand(insqry);
             }                      
                    
             if(request.getParameter("did")!=null)
            {
              String delqry="delete from tbl_location where location_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Location.jsp");
            }
         
        %>
        <form method="post">
            <table border="3" align="center">
                <tr>
                    <td>District</td>
                    <td><select name="seldis" onchange="getPlace(this.value)">
                            <option>--select district--</option>
                            <%
                            
                                String sel="select * from tbl_district";
                                ResultSet rs=con.selectCommand(sel);
                                while(rs.next())
                                {
                                    %>
                                    <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                                    <%
                                    
                                }
                                    
                            
                            %>
                        </select></td>
                </tr>
                 <tr>
                    <td>Place</td>
                    <td><select name="selpla" id="selplace">
                            <option>--select place--</option>
                            
                        </select></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td><input type="text" name="locname" placeholder="Enter Location"></td>
                    <td><input type="hidden" name="locid"></td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="save" value="Save">
                    <input type="reset" name="cancel" value="Cancel"></td>
                </tr>
            </table>
        </form>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>District</th>
                    <th>Place</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>
                <%
                 String selectqry="select * from tbl_location t inner join tbl_place p on p.place_id = t.place_id inner join tbl_district d on d.district_id=p.district_id ";
                 ResultSet r=con.selectCommand(selectqry);
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                   <td><%=r.getString("district_name")%></td> 
                 <td><%=r.getString("place_name")%></td> 
                 <td><%=r.getString("location_name")%></td> 
                 <td><a href="Location.jsp?did=<%=r.getString("location_id")%>">Delete</a>
                 </td></tr>
                  <%
                 }
                  %>
        </table>
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
