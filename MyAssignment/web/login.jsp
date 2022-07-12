<%-- 
    Document   : login
    Created on : Jul 10, 2022, 11:07:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="login.css"  rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="login" method="POST">
            <div class="container">
                <label for="email"><b>Email</b></label>
                <input class="input" type="text" placeholder="Enter Email" name="email" required>

                <label for="pass"><b>Password</b></label>
                <input class="input" type="password" placeholder="Enter Password" name="pass" required>

                <input type="submit" value="Login"/>
            </div>
        </form>  
    </body>
</html>
