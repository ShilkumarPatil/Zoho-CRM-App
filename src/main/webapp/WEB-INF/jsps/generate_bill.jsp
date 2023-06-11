<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Billing</title>
    <style>
        /* Define your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            border: none;
            color: #fff;
            cursor: pointer;
            border-radius: 4px;
        }

        pre {
            white-space: pre-wrap;
            word-wrap: break-word;
        }
    </style>
</head>
<body>
    <h2>Billing</h2>
    <form action="saveBill" method="post">
        <pre>
        <label for="firstName">First Name</label>
        <input type="text" name="firstName" value="${contact.firstName}">

        <label for="lastName">Last Name</label>
        <input type="text" name="lastName" value="${contact.lastName}">

        <label for="email">Email</label>
        <input type="text" name="email" value="${contact.email}">

        <label for="mobile">Mobile</label>
        <input type="text" name="mobile" value="${contact.mobile}">

        <label for="product">Product Name</label>
        <input type="text" name="product">

        <label for="quantity">Quantity</label>
        <input type="text" name="quantity">

        <label for="amount">Amount</label>
        <input type="text" name="amount">

        <input type="submit" value="Generate">
        </pre>
    </form>
</body>
</html>
