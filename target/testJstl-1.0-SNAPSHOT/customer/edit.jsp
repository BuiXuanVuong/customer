<%--
  Created by IntelliJ IDEA.
  User: Media
  Date: 17/10/2020
  Time: 12:27 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<%--    <c:if test='${requestScope["message"]}!=null'>--%>
<%--        <% System.out.println("message test in edit");%>--%>
<%--        <c:out value="Hello">"message display" </c:out>--%>
<%--        <span class="message">${requestScope["message"]}</span>--%>
<%--    </c:if>--%>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
    <p>
        <a href="/customers">Back to customer list</a>
    </p>
    <form method = "post">
        <fieldset>
            <legend>Customer information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update customer"</td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
