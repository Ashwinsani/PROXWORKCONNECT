<%-- 
    Document   : AjaxRating
    Created on : 24 May, 2024, 2:37:48 PM
    Author     : ashwi
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.json.JSONObject"%>
<%@page import=" org.json.JSONArray"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    if (request.getParameter("rating_data") != null) {
        
         String checkQuery = "SELECT COUNT(*) FROM tbl_review WHERE user_id = '" + session.getAttribute("uid") + "' AND worker_id = '" + request.getParameter("worker_id") + "'";
        ResultSet checkRs = con.selectCommand(checkQuery);
         
        if (checkRs.next() && checkRs.getInt(1) == 0) {

        String ins = "INSERT INTO tbl_review(user_name,user_rating,user_review,review_datetime,worker_id,user_id)"
                + "VALUES('" + request.getParameter("user_name") + "','" + request.getParameter("rating_data") + "','" + request.getParameter("user_review") + "',SYSDATE(),'" + request.getParameter("worker_id") + "','" + session.getAttribute("uid") + "')";

        if (con.executeCommand(ins)) {
            out.println("Your Review & Rating Successfully Submitted");
        }else {
            out.println("Your Review & Rating Insertion Failed");
              }
        }
        else{
         out.println("You have already submitted a review for this worker"); 
                    }                

    }

    if (request.getParameter("action") != null) {
        int average_rating = 0;
        int total_review = 0;
        int five_star_review = 0;
        int four_star_review = 0;
        int three_star_review = 0;
        int two_star_review = 0;
        int one_star_review = 0;
        int total_user_rating = 0;

        String query = "SELECT * FROM tbl_review where worker_id = '" + request.getParameter("wid") + "' ORDER BY review_id DESC";

        ResultSet rs = con.selectCommand(query);

        JSONObject b = new JSONObject();
        JSONArray J = new JSONArray();
        //JSONObject a = new JSONObject();
        while (rs.next()) {
            JSONObject a = new JSONObject();
            a.put("user_name", rs.getString("user_name"));
            a.put("user_review", rs.getString("user_review"));
            a.put("rating", rs.getString("user_rating"));
            a.put("datetime", rs.getString("review_datetime"));

            J.put(a);

            if (rs.getString("user_rating").equals("5")) {
                five_star_review++;
            }
            if (rs.getString("user_rating").equals("4")) {
                four_star_review++;
            }
            if (rs.getString("user_rating").equals("3")) {
                three_star_review++;
            }
            if (rs.getString("user_rating").equals("2")) {
                two_star_review++;
            }
            if (rs.getString("user_rating").equals("1")) {
                one_star_review++;
            }

            total_review++;

            total_user_rating = total_user_rating + rs.getInt("user_rating");

        }

        average_rating = total_user_rating / total_review;

        b.put("average_rating", average_rating);
        b.put("total_review", total_review);
        b.put("five_star_review", five_star_review);
        b.put("four_star_review", four_star_review);
        b.put("three_star_review", three_star_review);
        b.put("two_star_review", two_star_review);
        b.put("one_star_review", one_star_review);
        b.put("review_data", J);

        out.println(b);
    }

%>