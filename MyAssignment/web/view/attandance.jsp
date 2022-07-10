<%-- 
    Document   : attandance
    Created on : Jul 10, 2022, 10:47:14 PM
    Author     : Admin
--%>

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
        <form action="take_attend" method="POST">
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
                            <th class="th">Image</th>
                            <th class="th">StudentID</th>
                            <th class="th">Gender</th>
                            <th class="th">Name</th>
                            <th class="th">Attendance</th>
                            <th class="th">Note</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="td_index">1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">2</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">3</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">4</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">5</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">6</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">7</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">8</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">9</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">10</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">11</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">12</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">13</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">14</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                        <tr>
                            <td class="td_index">15</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><input type="radio" name="gender" value="male" /> YES
                                <input type="radio" name="gender" value="female"/>NO</td>
                            <td><input type="text"/></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <input style="text-align: right" type="submit" value="Save"/>
        </form>
    </body>
</html>
