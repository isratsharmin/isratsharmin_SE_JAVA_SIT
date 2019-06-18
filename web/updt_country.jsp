    <%@page import="java.sql.*,java.util.*"%>

<%
        //updating country in db
        String hdn = request.getParameter("hdn");
        String country_name = request.getParameter("country_name");

        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
             PreparedStatement ps = con.prepareStatement("update country_name set country_name=? where country_id = "+hdn );
            ps.setString(1, country_name);
            
            ps.executeUpdate();
            con.close();
            ps.close();
            response.sendRedirect("add_country.jsp");
         }catch(Exception ex)
         {
            out.println(ex.getMessage());
            out.println("Can not Inserted Record..");
         }

        %>
