<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*"%>
    
    <%@ page import="com.project.model.*" %>
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
	SessionFactory sf = new  Configuration().configure().buildSessionFactory();
	
	Session r = sf.openSession();
	
	Transaction t = r.beginTransaction();
	
	int rollno =Integer.parseInt(request.getParameter("rno"));
	
	student s = new student();
	s.setRollno(rollno);
	
	r.delete(s);
	
	t.commit();
	r.close();
}catch(Exception e)
{
  out.println(e.getMessage());
}


%>
</body>
</html>