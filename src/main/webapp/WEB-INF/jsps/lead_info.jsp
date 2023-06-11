<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file ="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Lead</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      padding: 20px;
    }
    h2 {
      color: #333;
      text-align: center;
    }
    .lead-info {
      margin-bottom: 20px;
      padding: 10px;
      background-color: #fff;
      border: 1px solid #ccc;
    }
    .lead-info label {
      display: inline-block;
      width: 80px;
      font-weight: bold;
    }
    .lead-info span {
      margin-left: 10px;
    }
    .lead-info form {
      margin-top: 10px;
    }
    .lead-info input[type="submit"] {
      padding: 5px 10px;
      background-color: #337ab7;
      color: #fff;
      border: none;
      cursor: pointer;
    }
    .lead-info input[type="submit"]:hover {
      background-color: #135fa7;
    }
      body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    
    margin: 20px;
    
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
  }
  </style>
</head>
<body>
<h2>New Lead</h2>
         First Name:${lead.firstName}<br/>
         Last Name:${lead.lastName}<br/>
          Email:${lead.email}<br/>
           Mobile:${lead.mobile}<br/>
            Source:${lead.source}<br/>
            <form action="composeEmail"method="post">
            <input type="hidden" name="email" value="${lead.email}"/>
            <input type="submit"value="Email"/>
            </form>
            
            <form action="convertlead"method="post">
            <input type="hidden" name="id" value="${lead.id}"/>
            <input type="submit"value="convert"/>
            </form>
</body>
</html>