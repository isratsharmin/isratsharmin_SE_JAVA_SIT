<%@page import="java.sql.*,java.util.*"%>
<%
//inserting member in db
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String member_DOB=request.getParameter("member_DOB");
String member_age=request.getParameter("member_age");
String member_role=request.getParameter("member_role");
String country_id=request.getParameter("country_id");

        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
           
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into team_member(first_name, last_name, member_DOB, member_age, member_role, country_id) values('"+first_name+"','"+last_name+"','"+member_DOB+"','"+member_age+"', '"+member_role+"', '"+country_id+"')");
        response.sendRedirect("add_member.jsp");
        }
        catch(Exception e){
         out.println(e.getMessage());
            out.println("Can not Inserted Record..");
        }
        %>
