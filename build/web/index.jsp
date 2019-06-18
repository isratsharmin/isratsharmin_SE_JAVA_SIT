<%-- 
    Document   : index
    Created on : Jun 16, 2019, 1:13:48 PM
    Author     : DIU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cricket Team Registration Panel</title>
    </head>
    <body>
       <% 
           //session start
           if ((session.getAttribute("name")== "")||(session.getAttribute("name")== null)) { 
                  response.sendRedirect("login.jsp");
    
              } %>
<jsp:include page="header.jsp" />  


<h2> Welcome to Cricket Team Registration Panel</h2>
<div style="font-weight:bold;color:#3d9ccd;font-size:28px;text-align:center;padding-top:50px;">
   
	Welcome to the dashboard  <br>
	
</div>

<jsp:include page="footer.jsp" />  	
   
