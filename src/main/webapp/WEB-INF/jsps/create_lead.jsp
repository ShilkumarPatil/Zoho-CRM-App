<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file ="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
  /* CSS properties for the form */
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    
    margin: 20px;
    
    background-size: cover;
    background-image: url('https://images.unsplash.com/photo-1428908728789-d2de25dbd4e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80');
    
    background-position: center;
  }

  h2 {
    color: #000000;
    text-align: center;
  }

  form {
    width: 500px;
    margin: 0 auto;
    background-color: #fff;
    padding:  20px;
    border: 1px solid #ccc;
    border-radius: 5px;
  }

  form pre {
    white-space: pre-wrap;
  }

  form input[type="text"],
  form select {
    width: 90%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  form input[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }

  form input[type="submit"]:hover {
    background-color: #45a049;
  }
  
  input {
  width: 100%;
  height: 30px;
  border: 1px solid #ccc;
  padding: 5px;
  margin-bottom: 10px;
}

button {
  background-color: #000;
  color: #fff;
  border: none;
  padding: 10px;
  cursor: pointer;
  width: 100%;
}

.container {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.error {
  color: red;
  font-size: 14px;
  margin-top: 5px;
}

.success {
  color: green;
  font-size: 14px;
  margin-top: 5px;
}
</style>

</head>
<body>
<h2>New Lead </h2>
<form action="savelead"method="post">
<pre>
First Name<input type="text" name="firstName">
Last Name<input type="text" name="lastName">
Email<input type="text" name="email">
Mobile<input type="text" name="mobile">
source:
<select name="source">
<option value="new paper">News Paper</option>
<option value="online">Online</option>
<option value="webinar">Webinar</option>
<option value="radio">Radio</option>
</select>
<input type="submit" value="Save">
</pre>
</form>
</body>
</html>