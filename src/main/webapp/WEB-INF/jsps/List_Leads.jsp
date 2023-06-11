<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Leads</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
         background-image: url('https://images.unsplash.com/photo-1491895200222-0fc4a4c35e18?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80');
        margin: 0;
        padding: 20px;
    }

    h2 {
        color: #333;
    }

    table {
        width: 100%;
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
        color : white
    }

    a {
        color: #0000EE;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<h2>List Leads</h2>
<table>
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Source</th>
  </tr>
  <c:forEach var="lead" items="${leads}">
    <tr>
      <td>${lead.id}</td>
      <td><a href="LeadInfo?id=${lead.id}">${lead.firstName}</a></td>
      <td>${lead.lastName}</td>
      <td>${lead.email}</td>
      <td>${lead.mobile}</td>
      <td>${lead.source}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
