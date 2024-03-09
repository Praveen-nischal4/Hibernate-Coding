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

Transaction t = r.beginTransaction();

CriteriaBuilder criteriaBuilder =r.getCriteriaBuilder();

CriteriaUpdate<student> criteriaUpdate =criteriaBuilder.createCriteriaUpdate(student.class);

Root<student> root =criteriaUpdate.from(student.class);

criteriaUpdate.set(root.get("name"), "Jessica");
criteriaUpdate.set(root.get("city"),"Kolkutta");
criteriaUpdate.set(root.get("course"), "MCA");

criteriaUpdate.where(criteriaBuilder.equal(root.get("rollno"),2));

int rs = r.createQuery(criteriaUpdate).executeUpdate();
t.commit();
r.close();
sf.close();
%>
</body>
</html>