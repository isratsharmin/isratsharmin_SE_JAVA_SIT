
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="style.css">
        <!-- Login page for entering the panel-->
        <script type="text/javascript">

            function valid_form()
            {
                if(document.form_login.name.value == "")
                    {
                        alert("Please Enter Username");
                        return false;
                    }
                if(document.form_login.password.value == "")
                    {
                        alert("Please Enter Password");
                        return false;
                    }
                 return true;
            }
        </script>

    </head>
    <body>
        <div id="wrapper-login">

	<h1>Login</h1>
	
	<form name="form_login" action="logincheck.jsp" method="post" onsubmit="return valid_form();">
		<table>
			<tr>
				<td>Username: </td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</div>
    </body>
</html>
