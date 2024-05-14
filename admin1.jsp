<title>Admin Authantication</title>
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM admin where name='"+username+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("adminmain.jsp");
			}
			else
			{
				response.sendRedirect("adminrelogin.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>