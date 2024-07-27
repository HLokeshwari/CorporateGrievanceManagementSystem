<%@page import="com.klef.ep.models.Admin"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.util.List"%>
<%@page import="javax.ejb.EJB"%>
<%
Admin admin = (Admin) session.getAttribute("admin");
%>
<html>
<head>
<title>Admin Home</title>
</head>
<body bgcolor="lightblue">
<h3 align='center'>WELCOME TO ADMIN HOME!!</h3>
<a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="viewall.jsf">View All</a>&nbsp;&nbsp;&nbsp;
<a href="viewgre.jsf">View Grievances</a>&nbsp;&nbsp;&nbsp;
<a href="empreg.jsf">Employee Registration</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
<br/><br/>
Welcome <%=admin.getUsername()%>
</body>
</html>