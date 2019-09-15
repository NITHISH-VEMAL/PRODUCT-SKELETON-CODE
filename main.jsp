


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
if(session.getAttribute("vote")==null){
%>


<h1>Welcome ${name}</h1>
<form action="Comment" method="post">

 <select name="status">
    <option value="Intrested"> Intrested</option>
    <option value="Not Intrested">Not intrested</option>
  </select>
  <input type="text" name="comment" placeholder="comment">
  <input type="submit" value="Submit">

</form>
<%
session.setAttribute("vote","yes");
}
else
{
	response.sendRedirect("display.jsp");
}
%>

</body>
</html>