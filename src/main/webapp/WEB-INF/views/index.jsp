<%--
  Created by IntelliJ IDEA.
  User: Quan Maple
  Date: 2/11/2019
  Time: 5:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Caculator</title>
</head>
<body>
<h2>Caculator</h2>

<form action="/", method="post", >
  <table>
    <tr>
      <td colspan="2">
        <input type="text" name="num1" placeholder="Num 1">
      <td/>

      <td colspan="2">
        <input type="text" name="num2" placeholder="Num 2">
      </td>
    </tr>

    <tr>
      <td>
        <input type="submit" value="Addition(+)" name="caculator">
      </td>

      <td>
        <input type="submit" value="Subtraction(-)" name="caculator">
      </td>

      <td>
        <input type="submit" value="Multiplication(x)" name="caculator">
      </td>

      <td>
        <input type="submit" value="Division(/)" name="caculator">
      </td>

    </tr>
  </table>
</form>
<c:if test="${result != null}">
  <h3>Result ${result}</h3>
</c:if>
</body>
</html>