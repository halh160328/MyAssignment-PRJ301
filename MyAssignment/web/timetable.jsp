<%-- 
    Document   : timetable
    Created on : Jul 12, 2022, 1:20:07 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
                <p style="font-size: 36px;font-family: helvetica neue;width: 100%;height: 50px;background-color: red;margin: 0px">${l.userName}'s
                    Timetable</p>
                </c:forEach>
        </div>
        <form action="timetable" method="POST">
            <div style="background-color: #f8e1ac">
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
                            <c:forEach items="${requestScope.slots}" var="slot">
                                <tr>
                                    <td style="text-align: left">${slot.slotID}</td>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Monday}" var="monday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (monday.slot.slotID)}">
                                                <td style="text-align: center">${monday.course.courseID}<br/>${monday.group.groupName}<br/>
                                                    <a href="attendance?cid=${monday.course.courseID}&gid=${monday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Monday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Tuesday}" var="tuesday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (tuesday.slot.slotID)}">
                                                <td style="text-align: center">${tuesday.course.courseID}<br/>${tuesday.group.groupName}<br/>
                                                    <a href="attendance?cid=${tuesday.course.courseID}&gid=${tuesday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Tuesday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Wednesday}" var="wednesday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (wednesday.slot.slotID)}">
                                                <td style="text-align: center">${wednesday.course.courseID}<br/>${wednesday.group.groupName}<br/>
                                                    <a href="attendance?cid=${wednesday.course.courseID}&gid=${wednesday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Wednesday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Thursday}" var="thursday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (thursday.slot.slotID)}">
                                                <td style="text-align: center">${thursday.course.courseID}<br/>${thursday.group.groupName}<br/>
                                                    <a href="attendance?cid=${thursday.course.courseID}&gid=${thursday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Thursday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Friday}" var="friday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (friday.slot.slotID)}">
                                                <td style="text-align: center">${friday.course.courseID}<br/>${friday.group.groupName}<br/>
                                                    <a href="attendance?cid=${friday.course.courseID}&gid=${friday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Friday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Saturday}" var="saturday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (saturday.slot.slotID)}">
                                                <td style="text-align: center">${saturday.course.courseID}<br/>${saturday.group.groupName}<br/>
                                                    <a href="attendance?cid=${saturday.course.courseID}&gid=${saturday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Saturday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                    <c:set var="count" value="${0}" />
                                    <c:forEach items="${requestScope.Sunday}" var="sunday">
                                        <c:choose>
                                            <c:when test="${slot.slotID eq (sunday.slot.slotID)}">
                                                <td style="text-align: center">${sunday.course.courseID}<br/>${sunday.group.groupName}<br/>
                                                    <a href="attendance?cid=${sunday.course.courseID}&gid=${sunday.group.groupID}">take-attend</a>
                                                </td>
                                            </c:when>
                                            <c:otherwise>
                                                <c:set var="count" value="${count+1}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:if test="${count == (requestScope.Sunday.size())}">
                                        <td style="text-align: left"></td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <a href="login">Change Account </a>
        </form>
    </body>
    <footer style="padding-top: 15px">
        <div>
            <p style="text-align: center; font-size: 20px">Mọi thắc mắc xin liên hệ: <a href="abc.jsp">truongdoi123@gmail.edu.vn</a>
            </p>
        </div>
    </footer>
</html>
