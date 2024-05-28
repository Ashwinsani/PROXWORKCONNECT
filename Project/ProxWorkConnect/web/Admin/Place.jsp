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
        <title>Place</title>
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
        <%
             if(request.getParameter("save")!=null)
             {
                
                 if(request.getParameter("placeid").equals(""))
                 {
              String insqry="insert into tbl_place(place_name,district_id)values('"+request.getParameter("placename")+"','"+request.getParameter("ddist")+"')";
              con.executeCommand(insqry);
              
                 }
                 else
                 {
                     String upqry="update tbl_place set place_name='"+request.getParameter("placename")+"',district_id='"+request.getParameter("ddist")+"' where place_id='"+request.getParameter("placeid")+"'";
                  con.executeCommand(upqry);
//                  out.println(upqry);
                  response.sendRedirect("Place.jsp");
                 }
             }
                    
             if(request.getParameter("did")!=null)
            {
              String delqry="delete from tbl_place where place_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Place.jsp");
            }
          String editid="";
          String editname="";
          String editdist="";
          if(request.getParameter("eid")!=null)
          {
              String selqry1="select * from tbl_place where place_id='"+request.getParameter("eid")+"'";  
              ResultSet rs1=con.selectCommand(selqry1);
              rs1.next();
              editid=rs1.getString("place_id");
              editname=rs1.getString("place_name");
              editdist=rs1.getString("district_id");
          }
        %>
        <form method="post">
            <div class="fonty">
            <table cellpadding="10" align="center">
                
                <br>
                <tr>
                <td>District</td>
                    <td >
                        <select name="ddist">
                            <option >--select district--</option>
                            <%
                              String selqry="select * from tbl_district";
                              ResultSet rs=con.selectCommand(selqry);
                              while(rs.next())
                              {
                              
                            %>
                            <option value="<%=rs.getString("district_id")%>" <% if(rs.getString("district_id").equals(editdist)) { out.print("selected");}%>><%=rs.getString("district_name")%></option>
                            <%
                              }
                            %>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                <td>Place</td>
                <td><input type="text" class="text-box" name="placename" value="<%=editname%>" placeholder="Enter Place">
                    <input type="hidden" name="placeid" value="<%=editid%>">
                    
                </td>
                </tr>
               
                 <tr>
                    <td colspan="2" align="center"><input type="submit" class="button" name="save" value="Save">
                    <input type="reset" class="button" name="cancel" value="Cancel"></td>
                </tr>
               
            </table>
            </div><br><br>
            <table cellpadding="10" align="center">
                
                <tr>
                    <th div class="fontw">Sl.no</th>
                    <th div class="fontw">District</th>
                    <th div class="fontw">Place</th>
                    <th div class="fontw">Action</th>
                </tr>
                
                <%
                 String selectqry="select * from tbl_place p inner join tbl_district d on d.district_id=p.district_id";
                 ResultSet r=con.selectCommand(selectqry);
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                     
                     <tr>
                         <td div class="fonty"><%=i%></td>
                   <td div class="fonty" ><%=r.getString("district_name")%></td> 
                 <td div class="fonty"><%=r.getString("place_name")%></td> 
                 <td><a href="Place.jsp?did=<%=r.getString("place_id")%>">Delete</a>
                 |<a href="Place.jsp?eid=<%=r.getString("place_id")%>">Edit</a></td></tr>
                
                  <%
                 }
                  %>
                 
                    
            </table>
                                 
                
        </form>
    </body>
                  
 <%@include file="Foot.jsp" %>
     </div>
    </div>
</html>
