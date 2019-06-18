
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Cricket Team Registration Panel</title>
        <script type='text/javascript'>
	function confirmDelete()
	{
		return confirm("Do you sure want to delete this data?");
	}
	</script>
	<!-- Fancybox jQuery -->
	<script type="text/javascript" src="fancybox/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="fancybox/jquery.fancybox.js"></script>
	<script type="text/javascript" src="fancybox/main.js"></script>
	<link rel="stylesheet" type="text/css" href="fancybox/jquery.fancybox.css" />
	<!-- //Fancybox jQuery -->
	
	<!-- CKEditor Start -->
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<!-- // CKEditor End -->
    </head>
    <body>
        <div id="wrapper">
		<div id="header">
			<h1>Cricket Team Registration Panel</h1>
		</div>
		<div id="container">
			<div id="sidebar">
				<h2>Page Options</h2>
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="logout.jsp">Logout</a></li>
				</ul>
				<h2>Registering Options</h2>
				<ul>
					<li><a href="add_country.jsp">Add Country</a></li>
					<li><a href="add_member.jsp">Add Member</a></li>
					<li><a href="view_team.jsp">View Team</a></li>	
				</ul>
				
			</div>
			
                       <div id="content">
