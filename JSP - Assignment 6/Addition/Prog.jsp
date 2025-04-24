<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Addition Program</title>
</head>
<body>
    <form>
        <input type="text" value="0" name="n1">
        <input type="text" value="0" name="n2">
        <input type="submit" value="Add">
        <br><br>

        <%
            String s1 = request.getParameter("n1");
            String s2 = request.getParameter("n2");

            if (s1 != null && s2 != null && !s1.isEmpty() && !s2.isEmpty()) {
                try {
                    int a = Integer.parseInt(s1);
                    int b = Integer.parseInt(s2);
                    out.print("Addition is: " + (a + b));
                } catch (NumberFormatException e) {
                    out.print("Please enter valid numbers.");
                }
            }
        %>
    </form>
</body>
</html>
