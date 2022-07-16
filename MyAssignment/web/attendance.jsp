<%-- 
    Document   : attandance
    Created on : Jul 10, 2022, 10:47:14 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="attendance.css"  rel="stylesheet" type="text/css"/>
        <style>
            td{
                border: 1px solid
            }
        </style>
    </head>
    <body>
        <form action="attendance" method="POST">
            <div style="font-size: 40px; text-align: left">
                Attendance Taking
            </div>
            <div style="margin-top: 30px;text-align: center;font-size: 40px">
                GroupID's Student List
            </div>
            <div>
                <table style="margin-left: auto;margin-right: auto;width: 100%">
                    <thead>
                        <tr>
                            <th class="th">Index</th>
                            <th class="th">StudentID</th>
                            <th class="th">Gender</th>
                            <th class="th">Name</th>
                            <th class="th">Attendance</th>
                            <th class="th">Note</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="count" value="${1}" />
                        <c:forEach items="${requestScope.listStudent}" var="s">
                            <tr>
                                <td class="td_index">${count}</td>
                                <td>${s.id}</td>
                                <td>${s.gender}</td>
                                <td>${s.name}</td>               
                                <td><input type="radio" name="attend" value="yes" /> YES
                                    <input type="radio" name="attend" value="no"/>NO</td>
                                <td><input type="text"/></td>
                            </tr>
                            <c:set var="count" value="${count+1}" />
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <input style="text-align: right" type="submit" value="Save"/>
        </form>
    </body>
</html>
