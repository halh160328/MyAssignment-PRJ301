<%-- 
    Document   : timetable
    Created on : Jul 12, 2022, 1:20:07 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            td {
                border: 1px solid;
            }
        </style>
    </head>
    <body style="margin: 0px">
        <div>
            <c:forEach items="${requestScope.lecs}" var="l">
                <p style="font-size: 36px;font-family: helvetica neue;width: 100%;height: 50px;background-color: red;margin: 0px">${l.userName}'s Timetable</p>
            </c:forEach>
        </div>
        <form action="dal" method="Get">
            <div  style="background-color: #f8e1ac">
                <div style="text-align: center">
                    <c:forEach items="${requestScope.lecs}" var="l">
                        <input style="text-align: center" type="text" value="${l.userName}"/>
                    </c:forEach>
                    <table style="margin-left: auto;margin-right: auto;width: 100%">
                        <thead>
                            <tr>
                                <th style="padding-right: 100px"></th>
                                <th class="th">Monday</th>
                                <th class="th">Tuesday</th>
                                <th class="th">Wednesday</th>
                                <th class="th">Thursday</th>
                                <th class="th">Friday</th>
                                <th class="th">Saturday</th>
                                <th class="th">Sunday</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <td style="text-align: left">Slot 1</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 2</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 3</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 4</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 5</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 6</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 7</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                            <tr>
                                <td style="text-align: left">Slot 8</td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                                <td style="text-align: left">CourseId<br>GroupID<br><a href="take_attend" style="color: green;font-size: 15px">take attend</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </form>
    </body>
    <footer style="padding-top: 15px">
        <div>
            <p style="text-align: center; font-size: 20px">Mọi thắc mắc xin liên hệ: <a href="abc.jsp">truongdoi123@gmail.edu.vn</a> </p>
        </div>
    </footer>
</html>
