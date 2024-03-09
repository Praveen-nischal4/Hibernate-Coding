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

//note this step
Query<staff> q = r.createQuery("from staff",staff.class); 

List<staff> staffs = q.getResultList();

out.println("<table border='2px solid double'");
for(staff ss :staffs )
{
	 out.println("<tr> <td>"+ss.getSid()+" <td>"+ss.getSname()+"<td> "+ss.getSalary()+" <td>"+ss.getDesignation());
}

out.println("</table>");
 
 %>
</body>
</html>