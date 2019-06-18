    <%@page import="java.sql.*,java.util.*"%>

<%
        //updating member in db
        String hdn = request.getParameter("hdn");
        String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String member_DOB=request.getParameter("member_DOB");
        String member_age=request.getParameter("member_age");
        String member_role=request.getParameter("member_role");
        String country_id=request.getParameter("country_id");


        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
             PreparedStatement ps = con.prepareStatement("update team_member set first_name=?, last_name=?, member_DOB=?, member_age=?, member_role=?, country_id=? where member_id = "+hdn );
            ps.setString(1, first_name);
            ps.setString(2, last_name);
            ps.setString(3, member_DOB);
            ps.setString(4, member_age);
            ps.setString(5, member_role);
            ps.setString(6, country_id);
            
            ps.executeUpdate();
            con.close();
            ps.close();
            response.sendRedirect("view_team.jsp");
         }catch(Exception ex)
         {
            out.println(ex.getMessage());
            out.println("Can not Inserted Record..");
         }

        %>

