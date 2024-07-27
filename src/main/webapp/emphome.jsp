<%@ page import="javax.naming.InitialContext" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.ejb.EJB" %>
<%@ page import="com.klef.ep.services.EmployeeService" %>
<%@ page import="com.klef.ep.models.Employee" %>

<%
Employee emp = (Employee) session.getAttribute("emps");
if (emp == null) {
    response.sendRedirect("sessionexpiry.html");
    return; // Ensure the rest of the page is not processed
}
%>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/styles.css"/>
    <title>Employee Home</title>
    <style>
        body {
        
            background: url('images/p1.png') no-repeat center center fixed;
            background-size: cover;
            color: #333;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #0056b3;
        }
        .nav-links {
            text-align: center;
            margin-top: 20px;
        }
        .nav-links a {
            margin: 0 15px;
            text-decoration: none;
            color: #0056b3;
            font-weight: bold;
            padding: 10px 20px;
            border: 2px solid #0056b3;
            border-radius: 5px;
            transition: background 0.3s, color 0.3s;
        }
        .nav-links a:hover {
            background: #0056b3;
            color: #fff;
        }
    </style>
</head>
<body>
<jsp:include page="empnav.jsf" />
    <div class="container">
        <h3>Employee Home Page</h3>
        <div class="nav-links">
            <a href="emphome.jsp">Home</a>
            <a href="emplogout.jsp">Logout</a>
        </div>
        <br/><br/>
        <p>Welcome, <%= emp.getFullname() %>! You are now in the Employee Home.</p>
    </div>
</body>
</html>
