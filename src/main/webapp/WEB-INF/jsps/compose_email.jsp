<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Compose</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
             background-image: url('https://images.unsplash.com/photo-1619252584172-a83a949b6efd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80');
            margin: 0;
            padding: 20px;
        }
        
        h2 {
            color: #000000;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 90%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        textarea {
            resize: vertical;
            height: 150px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            border: none;
            color: #fff;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <h2>Compose Email</h2>
    ${msg}
    <form action="sendEmail" method="post">
        <pre>
        <label for="to">To</label>
        <input type="text" name="to" value="${email}"/>

        <label for="sub">Subject</label>
        <input type="text" name="sub"/>

        <label for="msg">Message</label>
        <textarea name="msg" rows="10" cols="50"></textarea>

        <input type="submit" value="Send"/>
        </pre>
    </form>
</body>
</html>
