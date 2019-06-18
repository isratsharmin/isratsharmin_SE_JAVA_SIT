
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cricket Team Registration Panel</title>
        <script type="text/javascript">
       //JS for form validation
        function valid_form()
            {   
                if(document.country.country_name.value == "")
                    {
                        alert("Please Enter Country name");
                        return false;
                    }
                
                 return true;
            }
        </script>
    </head>
    <body>
    <jsp:include page="header.jsp" />  
    <% 
           //session start
           if ((session.getAttribute("name")== "")||(session.getAttribute("name")== null)) { 
                   response.sendRedirect("login.jsp");
    
              } %>
<h2>Add Country</h2>
<p>&nbsp;</p>
<!--Country adding Form start -->
<form name="country" action="insert_country.jsp" method="post" onsubmit="return valid_form();">
<table class="tbl1">
<tr>
	<td>Country Name</td>
</tr>
<tr>
	<td><input class="short" type="text" name="country_name"></td>
</tr>
<tr>
	<td><input type="submit" value="SAVE" ></td>
</tr>
</table>	
</form>
<!--country adding Form end -->
<h2>View Country</h2>
<!-- view country start -->
<table class="tbl2" width="100%">

	<tr>
		<th width="5%">Serial</th>
		<th width="75%">Country</th>
		<th width="15%">Action</th>
	</tr>
	
	 <%
            int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");//connect db
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
		<td>
                         <!--Fancy Box Start-->
                         <!-- Edit data-->
			<a class="fancybox" href="#inline<%=rs.getInt("country_id")%>">Edit</a>
			<div id="inline<%=rs.getInt("country_id")%>" style="width:400px;display: none;">
				<h3>Edit Data</h3>
				<p>
					<form action="updt_country.jsp" method="post">
					<input type="hidden" name="hdn" value="<%=rs.getInt("country_id")%>">
					     <table>
						<tr>
							<td>Country Name</td>
						</tr>
						<tr>
							<td><input type="text" name="country_name" value=<%= rs.getString("country_name") %> ></td>
						</tr>
						<tr>
							<td><input type="submit" value="UPDATE" ></td>
						</tr>
					</table>
					</form>
			
			</div>
                         <!-- Fancy box end-->                       
			&nbsp;|&nbsp;
                        <a onclick='return confirmDelete();' href="del_country.jsp?id=<%=rs.getInt("country_id") %>">Delete</a></td>
		</tr>
	
	   <% } %>

	</table>

   <jsp:include page="footer.jsp" />  	
   
