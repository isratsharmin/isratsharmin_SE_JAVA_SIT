<%@ page import="java.sql.*" %>
<% 

// checking login 
try{
    String name = request.getParameter("name");
String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
    Statement st = con.createStatement ();
    ResultSet rs = st.executeQuery("select * from login where name = '"+ name +"'and password='"+ password +"'");
    if(rs.next()){
         session.setAttribute("name", name);

    response.sendRedirect("index.jsp");
    }
    else{
    out.println("<script type =\"text/javascript\">");
    out.println("alert('Username or Password doesnot match');");
    out.println("location= 'login.jsp';");
    out.println("</script>");
    //response.sendRedirect("login.jsp");
    }
}
catch(Exception e){
  out.println(e);
}

%>