<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <script>
        function login3() {
            var a = document.getElementById("t1").value;
            var b = document.getElementById("t2").value;
            if (a === "admin" && b === "snjb") {
                alert("Login successful");
            } else {
                alert("Login unsuccessful");
            }
        }
    </script>
</head>
<body>
    <form>
        <table border="1" align="center" cellpadding="10">
            <caption><strong>LOGIN FORM</strong></caption>
            <tr>
                <td>Username</td>
                <td><input type="text" id="t1" required></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" id="t2" required></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="button" value="Login" onclick="login3()">
                    <input type="reset" value="Reset">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
