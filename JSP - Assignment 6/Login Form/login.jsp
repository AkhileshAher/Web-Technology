<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login Check</title>
</head>
<body>
    <form>
        <%
            String s1 = request.getParameter("n1");
            String s2 = request.getParameter("n2");

            if (s1 != null && s2 != null) {
                if (s1.equals("Akhilesh") && s2.equals("Aher")) {
                    out.print("Welcome " + s1);
                } else {
                    out.print("Enter Valid Login Credentials");
                }
            }
        %>
    </form>
</body>
</html>
