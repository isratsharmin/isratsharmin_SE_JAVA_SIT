package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class add_005fcountry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Panel</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("  \n");
      out.write("<h2>Add Country</h2>\n");
      out.write("<p>&nbsp;</p>\n");
      out.write("\n");
      out.write("<form action=\"insert_country.jsp\" method=\"post\">\n");
      out.write("<table class=\"tbl1\">\n");
      out.write("<tr>\n");
      out.write("\t<td>Country Name</td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><input class=\"short\" type=\"text\" name=\"country_name\"></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("\t<td><input type=\"submit\" value=\"SAVE\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\t\n");
      out.write("</form>\n");
      out.write("<h2>View Country</h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<tr>\n");
      out.write("\t\t<th width=\"5%\">Serial</th>\n");
      out.write("\t\t<th width=\"75%\">Country</th>\n");
      out.write("\t\t<th width=\"15%\">Action</th>\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("\t ");

            int count=0;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_team?" + "user=root&password=");
                         Statement st= con.createStatement();
                         ResultSet rs = st.executeQuery("select * from country_name");


        
      out.write("\n");
      out.write("       ");
 while(rs.next())
                         {
                            rs.getInt("country_id");

                        
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t<td>");
      out.print(++count );
      out.write("</td>\n");
      out.write("\t\t<td>");
      out.print( rs.getString("country_name") );
      out.write("</td>\n");
      out.write("\t\t<td>\n");
      out.write("\t\t\t<a class=\"fancybox\" href=\"#inline");
      out.print(rs.getInt("country_id"));
      out.write("\">Edit</a>\n");
      out.write("\t\t\t<div id=\"inline");
      out.print(rs.getInt("country_id"));
      out.write("\" style=\"width:400px;display: none;\">\n");
      out.write("\t\t\t\t<h3>Edit Data</h3>\n");
      out.write("\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t<form action=\"updt_country.jsp\" method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"hdn\" value=\"");
      out.print(rs.getInt("country_id"));
      out.write("\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td>Country Name</td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"text\" name=\"country_name\" value=");
      out.print( rs.getString("country_name") );
      out.write(" ></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<td><input type=\"submit\" value=\"UPDATE\" ></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t&nbsp;|&nbsp;\n");
      out.write("\t\t\t<a onclick='return confirmDelete();' href=\"del_country.jsp?id=");
      out.print(rs.getInt("country_id") );
      out.write("\">Delete</a>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\n");
      out.write("\t   ");
 } 
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("   \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
