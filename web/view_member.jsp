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
<!--Viewing member table start -->
<table class="tbl2" width="100%">

	<tr>
		<th width="5%">Serial</th>
		<th width="25%">Name</th>
                <th width="25%">Age</th>
                <th width="25%">Role</th>
		<th width="15%">Action</th>
	</tr>
	
	 <%
            int count=0;
                         String id = request.getParameter("id");
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");//connect db
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select m.member_id, m.first_name, m.last_name, m.member_DOB, m.member_age, m.member_role, m.country_id,  c.country_name, c.country_id from team_member as m inner join country_name as c where m.country_id = c.country_id and c.country_id = '"+id+ "'");
                         

        %>
       <% while(rs.next())
                         {
                            rs.getInt("member_id");

                        %>
<tr>
		<td><%=++count %></td>
		<td><%= rs.getString("first_name") %> <%= rs.getString("last_name") %></td>
                <td><%= rs.getString("member_age") %></td>
                <td><%= rs.getString("member_role") %></td>
		<td>
                         <!--Fancy box for updating member -->
			<a class="fancybox" href="#inline<%=rs.getInt("member_id")%>">Edit</a>
			<div id="inline<%=rs.getInt("member_id")%>" style="width:400px;display: none;">
				<h3>Edit Data</h3>
				<p>
					<form action="updt_member.jsp" method="post">
					<input type="hidden" name="hdn" value="<%=rs.getInt("member_id")%>">
					     <table>
						<tr>
							<td>First Name</td>
						</tr>
						<tr>
							<td><input type="text" name="first_name" value="<%= rs.getString("first_name") %>" ></td>
						</tr>
                                                <tr>
							<td>Last Name</td>
						</tr>
						<tr>
							<td><input type="text" name="last_name" value="<%= rs.getString("last_name") %>" ></td>
						</tr>
                                                         <td>Date of Birth</td>
                                               </tr>
                                               <tr>
	                                                   <td><input type="date" name="member_DOB" value=<%= rs.getString("member_DOB") %>></td>
                                               </tr>
                                               <tr>
	                                                 <td>Age</td>
                                               </tr>
                                               <tr>
	                                                   <td><input  type="text" name="member_age" value="<%= rs.getString("member_age") %>"></td>
                                               </tr>
                                                <tr>
	                                                 <td>Role</td>
                                               </tr>
                                                <tr>
                                                  <td>
	                                                   <select name="member_role">
                                                           <option value="">Select Role</option>
                                                           <option value="player">Player</option>
                                                           <option value="coach">Coach</option>
                                                           <option value="staff">Staff</option>
    
                                                            </select>
                                                 </td>
                                               </tr>
                                                <tr><td>Country Name</td></tr>
                                                <tr>
                                                 <td> 
                                                     <input type="hidden" name="country_id" value="<%=rs.getInt("country_id")%>">
                                                     <input type="text" name="country" value="<%= rs.getString("country_name") %>" readonly>
                                                  </td>
                                                    </tr>
					
						<tr>
							<td><input type="submit" value="UPDATE" ></td>
						</tr>
					</table>
					</form>
			
			</div>
                         <!--Fancy box end -->
			&nbsp;|&nbsp;
                        <a onclick='return confirmDelete();' href="del_member.jsp?id=<%=rs.getInt("member_id") %>">Delete</a></td>
		</tr>
	
	   <% } %>

	</table>

   <!--viewing member table end -->
<jsp:include page="footer.jsp" />
        
