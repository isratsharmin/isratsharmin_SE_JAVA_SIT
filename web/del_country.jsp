<%@page import="java.sql.*,java.util.*"%>
  <%

            String id = request.getParameter("id");
           //delte country from db
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");//connect to db
                PreparedStatement ps = con.prepareStatement("delete from country_name where country_id = '"+id+ "'");//delete country
                PreparedStatement ps1 = con.prepareStatement("delete from team_member where country_id = '"+id+ "'");//delete all the member who are in delteted country 
                ps.executeUpdate();
                ps1.executeUpdate();
                con.close();
                ps.close();
                ps1.close();
                response.sendRedirect("add_country.jsp");
            }
            catch(Exception ex)
             {
               out.println(ex.getMessage());
              }
        %>
