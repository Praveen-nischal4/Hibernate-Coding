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
Session r =sf.openSession();


Query<student> q = r.createQuery("from student",student.class);

List<student> sl = q.getResultList();

out.println("<table border='2'");
 for(student ss:sl)
 {
 	out.println("<tr><td>"+ss.getRollno()+" <td>"+ss.getName()+"<td>" +ss.getCity()+"<td> "+ss.getCourse());
}


out.println("</table>");

%>
</body>
</html>