<%-- 
    Document   : place
    Created on : 5 Dec, 2023, 11:35:02 AM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
               if (request.getParameter("btnsave") != null)
            {
                 if (request.getParameter("placeid") != "") {
                    String upqry = "update tbl_place set place_name='" + request.getParameter("placename") + "',district_id='" + request.getParameter("txtid") +"'  where place_id='" + request.getParameter("placeid") + "'";
                    con.executeCommand(upqry);
                    response.sendRedirect("place.jsp");

                } else {
                    String insqry = "insert into tbl_place(place_name,district_id)values('"+request.getParameter("placename")+"','"+request.getParameter("ddist")+"')";
                    con.executeCommand(insqry);
            }
            }
               if (request.getParameter("did") != null) {
                String delqry = "delete from tbl_place where place_id='" + request.getParameter("did") + "'";
                con.executeCommand(delqry);
                response.sendRedirect("place.jsp");
            }
               String editid = "";
            String editname = " ";
            String districtid="";
             if (request.getParameter("eid") != null) {
                String selqry1 = "select *from tbl_place where place_id='" + request.getParameter("eid") + "'";
                ResultSet rs1 = con.selectCommand(selqry1);
                rs1.next();
                editid = rs1.getString("place_id");
                editname = rs1.getString("place_name");
                districtid=rs1.getString("district_id");
            }
         %>
        
        <form method="post">
            <table border="1" align="center">
                <tr>
                    <td>District</td>
                    <td>
                        <select name="ddist">
                            <option>---select district---</option>
                        <%
                        String selqry="select * from tbl_district";
                        ResultSet rs=con.selectCommand(selqry);
                        while(rs.next())
                        {
                            %>
                            <option value="<%=rs.getString("district_id")%>"<%if(rs.getString("district_id").equals(districtid)) {out.print("selected");}%>><%=rs.getString("district_name")%></option>
                              <%
                        }
                        %>
                        </select>  
                    </td>    
                </tr>
                 <tr>
                    <td>Place</td>
                    <td>
                        <input type="text" name="placename" value="<%=editname%>">
                        <input type='hidden' name='placeid' value="<%=editid%>">
                    </td> 
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
                    <th>place</th>
                    <th>Action</th>
                </tr>
                <%
                    String selectqry = "select * from tbl_place p inner join tbl_district d on d.district_id=p.district_id";
                    ResultSet r = con.selectCommand(selectqry);
                    int i=0;
                    while(r.next())
                    {
                        i++;
                    %>
                    <tr>
                    <td><%=i%></td>
                    <td><%=r.getString("district_name")%></td>
                    <td><%=r.getString("place_name")%></td>
                    <td><a href="place.jsp?did=<%=r.getString("place_id")%>">
                            Delete</a>|<a href="place.jsp?eid=<%=r.getString("place_id")%>">Edit</a></td>
               
                            
                     </tr>
                <%
                    }
                %>
            </table>    
        <form>        
    </body>
</html>
