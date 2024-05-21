<%-- 
    Document   : WorkerVerification
    Created on : 11 Jan, 2024, 1:48:09 PM
    Author     : ashwi
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Worker verification</title>
    </head>
    <body>
        <%
             if (request.getParameter("aid") != null) {
         String upqry = "update tbl_worker set worker_isactive='1' where worker_id='" + request.getParameter("aid") + "'";
        if (con.executeCommand(upqry)){
         response.sendRedirect("WorkerVerification.jsp");
        }   
        }
              if (request.getParameter("rid") != null) {
         String upqry = "update tbl_worker set worker_isactive='2' where worker_id='" + request.getParameter("rid") + "'";
        if (con.executeCommand(upqry)){
         response.sendRedirect("WorkerVerification.jsp");
        }
        }
        %>
        <h2 align="center">New worker</h2>
            <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Photo</th>
                    <th>Proof</th>
                    <th>Place</th>
                    <th>Worker type</th>
                    <th>Action</th>
            </tr>
           <%
                String selqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='0'";
                ResultSet rs=con.selectCommand(selqry);
                int i=0;
                while(rs.next()){
                 i++; 
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("worker_name")%></td>
                    <td><%=rs.getString("worker_contact")%></td>
                    <td><%=rs.getString("worker_photo")%></td>
                    <td><%=rs.getString("worker_proof")%></td>
                    <td><%=rs.getString("place_name")%></td>
                    <td><%=rs.getString("workertype_name")%></td>
                    <td><a href="WorkerVerification.jsp?aid=<%=rs.getString("worker_id")%>">
                            Accept</a>|<a href="WorkerVerification.jsp?rid=<%=rs.getString("worker_id")%>">reject</a></td>
                </tr>
                <%
                    }
                %>

            </table>
                <h2 align="center">Rejected worker</h2>
                <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Photo</th>
                    <th>Proof</th>
                    <th>Place</th>
                    <th>Worker type</th>
                    <th>Action</th>
                </tr>
                <%
                String selqry1="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='2'";
                ResultSet rs1=con.selectCommand(selqry1);
                int j=0;
                while(rs1.next()){
                 j++; 
                %>
                <tr>
                    <td><%=j%></td>
                    <td><%=rs1.getString("worker_name")%></td>
                    <td><%=rs1.getString("worker_contact")%></td>
                    <td><%=rs1.getString("worker_photo")%></td>
                    <td><%=rs1.getString("worker_proof")%></td>
                    <td><%=rs1.getString("place_name")%></td>
                    <td><%=rs1.getString("workertype_name")%></td> 
                    <td><a href="WorkerVerification.jsp?aid=<%=rs1.getString("worker_id")%>">Accept</a></td>
                </tr>
                <%
                    }
                %>
                </table>
          <h2 align="center">Accepted worker</h2>
                <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Photo</th>
                    <th>Proof</th>
                    <th>Place</th>
                    <th>Worker type</th>
                    <th>Action</th>
                </tr>
                <%
                String selqry2="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id where w.worker_isactive='1'";
                ResultSet rs2=con.selectCommand(selqry2);
                int k=0;
                while(rs2.next()){
                 k++; 
                %>
                <tr>
                    <td><%=k%></td>
                    <td><%=rs2.getString("worker_name")%></td>
                    <td><%=rs2.getString("worker_contact")%></td>
                    <td><%=rs2.getString("worker_photo")%></td>
                    <td><%=rs2.getString("worker_proof")%></td>
                    <td><%=rs2.getString("place_name")%></td>
                    <td><%=rs2.getString("workertype_name")%></td> 
                    <td><a href="WorkerVerification.jsp?rid=<%=rs2.getString("worker_id")%>">reject</a></td>
                </tr>
                <%
                    }
                %>
                </table>

    </body>
</html>
