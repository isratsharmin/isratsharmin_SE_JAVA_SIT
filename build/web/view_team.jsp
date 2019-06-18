<%-- 
    Document   : view_team
    Created on : Jun 17, 2019, 10:47:01 PM
    Author     : DIU
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cricket Team Registration Panel</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />  
<h2>View Team</h2>
<p>&nbsp;</p>
<!--country wise team viewing -->
<table class="tbl2" width="100%">

	<tr>
		<th width="5%">Serial</th>
		<th width="75%">Team</th>
		<th width="15%">Action</th>
	</tr>
	
	 <%
            int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from country_name");
                         %>
       <% while(rs.next())
                         {
                            rs.getInt("country_id");

                        %>

                        
			
		<tr>
		<td><%=++count %></td>
		<td><%= rs.getString("country_name") %></td>
		<td> <a href="view_member.jsp?id=<%=rs.getInt("country_id") %>">View Member</a>	</td> 
		</tr>
	
	   <% } %>

	</table>

   
<jsp:include page="footer.jsp" />