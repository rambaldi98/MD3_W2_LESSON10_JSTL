<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: RAMBALDI
  Date: 5/24/2021
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customers</title>
</head>
<body>
<%

    List<Customer> customers=new ArrayList<>();

    customers.add(new Customer("hi","24-05-2021","v","https://i.pinimg.com/564x/9a/7a/6f/9a7a6f2b9c7b8433e7c947fb38d4f067.jpg"));
    customers.add(new Customer("hi2","24-05-2021","v","https://i.pinimg.com/564x/9a/7a/6f/9a7a6f2b9c7b8433e7c947fb38d4f067.jpg"));
    customers.add(new Customer("hi3","24-05-2021","v","https://i.pinimg.com/564x/9a/7a/6f/9a7a6f2b9c7b8433e7c947fb38d4f067.jpg"));
    customers.add(new Customer("hi4","24-05-2021","v","https://i.pinimg.com/564x/9a/7a/6f/9a7a6f2b9c7b8433e7c947fb38d4f067.jpg"));
    customers.add(new Customer("hi5","24-05-2021","v","https://i.pinimg.com/564x/9a/7a/6f/9a7a6f2b9c7b8433e7c947fb38d4f067.jpg"));

%>
<table>
    <tr>
        <th>Name</th>
        <th>Birthday</th>
        <th>Address</th>
        <th>img</th>
    </tr>
    <c:forEach var="customer" items="<%=customers%>">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getBirthday()}</td>
            <td>${customer.getAddress()}</td>
            <td> <img width="100" height="100" src="${customer.getImg()}"> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>