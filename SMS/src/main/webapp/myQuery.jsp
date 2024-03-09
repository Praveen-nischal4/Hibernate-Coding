<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*"%>
    
    <%@ page import="com.project.model.*,java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session r = sf.openSession();

Transaction t= r.beginTransaction();

Query q = r.createQuery("select s.name from student s where s.rollno =:n ");
q.setParameter("n", 2);
List<String> r1 = q.list();

for(String name :r1)
{
	out.println("Name :"+name);
}


%>
</body>
</html>