
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cricket Team Registration Panel</title>
        <script type="text/javascript">
         //Script for validation 
        function valid_form()
        
            {
              var first_name = document.forms["team_member"]["first_name"];               
              var last_name = document.forms["team_member"]["last_name"];    
              var dob = document.forms["team_member"]["member_DOB"];  
              var age =  document.forms["team_member"]["member_age"];  
              var role = document.forms["team_member"]["member_role"];  
              var country_id = document.forms["team_member"]["country_id"];  
   
    if (first_name.value == "")                                  
    { 
        window.alert("Please enter first name."); 
         
        return false; 
    } 
    
    if (last_name.value == "")                               
    { 
        window.alert("Please enter last name."); 
       
        return false; 
    } 
       
    if (dob.value == "")                                   
    { 
        window.alert("Please enter  valid date of birth address."); 
        
        return false; 
    } 
   
    if (age.value == "")                 
    { 
        window.alert("Please enter age."); 
        
        return false; 
    } 
   
    if (role.value=="")                  
    { 
        alert("Please enter role."); 
       
        return false; 
    } 
    if (country_id.value=="")                  
    { 
        alert("Please enter country name"); 
       
        return false; 
    } 
   
    return true; 
            }
    
        </script>
    </head>
    <body>
         <% 
           //session start
           if ((session.getAttribute("name")== "")||(session.getAttribute("name")== null)) { 
                   response.sendRedirect("login.jsp");
    
              } %>
<jsp:include page="header.jsp" />  
<h2>Add Member</h2>
<!--Member adding form start -->
<form name="team_member" action="insert_member.jsp" method="post" onsubmit="return valid_form();">
<table class="tbl1">
<tr>
	<td>First Name</td>
</tr>
<tr>
	<td><input class="short" type="text" name="first_name"></td>
</tr>
<tr>
	<td>Last Name</td>
</tr>
<tr>
	<td><input class="short" type="text" name="last_name"></td>
</tr>
<tr>
	<td>Date of Birth</td>
</tr>
<tr>
	<td><input class="short" type="date" name="member_DOB"></td>
</tr>
<tr>
	<td>Age</td>
</tr>
<tr>
	<td><input class="short" type="text" name="member_age"></td>
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
<tr><td>Select Country</td></tr>
<tr>
<td>
<select name="country_id">
<option value="">Select Country</option>
 <%
           
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
                         Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery("select * from country_name");
        %>
        <% while(rs.next())
                         {
                            rs.getInt("country_id");

                        %>

	<option value="<%=rs.getInt("country_id")%>"><%= rs.getString("country_name") %></option>
	<%
}
%>
</select>
</td>
</tr>
<tr>
	<td><input type="submit" value="SAVE"></td>
</tr>
</table>	
</form>
<!--Member adding form end -->
<jsp:include page="footer.jsp" />