<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int code=(int) session.getAttribute("code"); %>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/nithish" user="root" password="vns_1998"/>  
<sql:query var="rs" dataSource="${db}"> select * from store where codee=${code}</sql:query>

<c:forEach items="${rs.rows}" var="row">
	<h3 style="color:red;"><c:out value="${row.namee}" ></c:out></h3> <c:out value="${row.commente}" ></c:out> he is <c:out value="${row.statuse}" ></c:out>

</c:forEach> 

</body>  
</html>  

</body>
</html>