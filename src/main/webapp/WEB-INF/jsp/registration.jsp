<%@ page contentType="text/html;" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <style>
        .error {
            color: #ff0000;
        }

        .errorblock {
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>
</head>
<body>
<h1>Registration</h1>

<form:form modelAttribute="registration">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <table>
        <tr>
            <td>
                <spring:message code="name"/> :
            </td>
            <td>
                <form:input path="name"/>
            </td>
            <td>
                <form:errors path="name" cssClass="error"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message code="add_registraton"/>">
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>