<%@page import="java.sql.*,java.util.*"%>
  <%
            //delete member from database
            String id = request.getParameter("id");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");//connect to db
                PreparedStatement ps = con.prepareStatement("delete from team_member where member_id = '"+id+ "'");
                ps.executeUpdate();
                con.close();
                ps.close();
                response.sendRedirect("view_team.jsp");
            }
            catch(Exception ex)
             {
               out.println(ex.getMessage());
              }
        %>
