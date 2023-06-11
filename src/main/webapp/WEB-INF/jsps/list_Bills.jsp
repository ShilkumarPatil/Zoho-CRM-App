<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Bills</title>
    <style>
        /* Define your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            background-image: url('https://plus.unsplash.com/premium_photo-1683598334280-42e9bdc2279c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80');
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        table {
            width: 100%;
            color: #333;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
            color: black
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: grey;
            color: white
        }
    </style>
</head>
<body>
    <h2>Bill</h2>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Amount</th>
        </tr>
        <c:forEach var="billing" items="${billing}">
            <tr>
                <td>${billing.firstName}</td>
                <td>${billing.lastName}</td>
                <td>${billing.email}</td>
                <td>${billing.mobile}</td>
                <td>${billing.product}</td>
                <td>${billing.quantity}</td>
                <td>${billing.amount}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
