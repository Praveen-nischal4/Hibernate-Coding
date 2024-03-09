<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*,com.project.util.*"%>
    
       <%@ page import="com.project.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try
{
	SessionFactory sf =HibernateUtil.getSessionFactory(); 
	out.println("Connection "+sf);
	
	Session r = sf.openSession();
	
	
	
	int sid =Integer.parseInt(request.getParameter("sid"));
	String sname =request.getParameter("sname");
	double salary=Double.parseDouble(request.getParameter("salary"));
	String desig =request.getParameter("desig");
	
	
	Transaction t = r.beginTransaction();
	staff st = new staff();
	st.setSid(sid);
	st.setSname(sname);
	st.setSalary(salary);
	st.setDesignation(desig);
	
	r.save(st);
	
	t.commit();
	r.close();
	
}catch(Exception e)
{
	out.println(e.getMessage());
}


%>
</body>
</html>