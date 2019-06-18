<%@page import="java.sql.*,java.util.*"%>
<%
// inserting country name in db
String country_name=request.getParameter("country_name");

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
           
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into country_name(country_name) values('"+country_name+"')");
        response.sendRedirect("add_country.jsp");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>
