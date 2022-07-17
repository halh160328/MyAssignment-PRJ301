<%-- 
    Document   : checkSession
    Created on : Jul 17, 2022, 11:03:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            var count = 3;
            function redirect()
            {
                count--;
                document.getElementById('timer').innerHTML = count;
                if (count <= 0)
                    window.location.href = 'login';
            }
            setInterval(redirect, 1000);
        </script>
    </head>
    <body>
        <h1>Acess Denied! You must login first </h1>
        <h2 style="text-align: center"> Go back to Login page after <span id="timer">5</span> seconds </h2>
    </body>
</html>
