<%@page import="javax.persistence.criteria.CriteriaDelete"%>
<%@page import="javax.persistence.criteria.CriteriaBuilder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*,javax.persistence.criteria.*"%>
    
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
//note this step

int id =Integer.parseInt(request.getParameter("rno"));


CriteriaBuilder criteriaBuilder = r.getCriteriaBuilder();

CriteriaDelete<student> criteriaDelete =criteriaBuilder.createCriteriaDelete(student.class);

Root<student> root =criteriaDelete.from(student.class);

criteriaDelete.where(criteriaBuilder.equal(root.get("rollno"),id));

int k = r.createQuery(criteriaDelete).executeUpdate();

 //Query q = r.createQuery("delete from student s where s.rollno= :n");
//q.setParameter("n", id);
//int k = q.executeUpdate();
//t.commit();
t.commit();
r.close();
sf.close();
response.sendRedirect("viewStudent.jsp");
 %>
</body>
</html>