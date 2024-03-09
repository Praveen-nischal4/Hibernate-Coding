<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*"%>
    
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
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	out.println("Connection "+sf);
	
	Session r = sf.openSession();
	int rno =Integer.parseInt(request.getParameter("rno"));
	String sname =request.getParameter("sname");
	String city =request.getParameter("cty");
	String course =request.getParameter("cour");
	
	
	Transaction t = r.beginTransaction();
	student s = new student();
	s.setRollno(rno);
	s.setName(sname);
	s.setCity(city);
	s.setCourse(course);
	
	r.save(s);
	
	t.commit();
	r.close();
	
}catch(Exception e)
{
	out.println(e.getMessage());
}


%>
</body>
</html>