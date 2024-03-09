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
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session r = sf.openSession();

Transaction t = r.beginTransaction();


Query<student> q = r.createQuery("update student  set name = :n ,city =:c, course =:cu  where rollno =:r");
q.setParameter("n", "Neetika");
q.setParameter("c","Banglore");
q.setParameter("cu", "MBA");
q.setParameter("r", 3);

int k  =q.executeUpdate();
t.commit();

%>
</body>
</html>