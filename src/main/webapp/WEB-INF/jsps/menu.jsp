<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
    background-image: url('https://images.unsplash.com/photo-1602615576820-ea14cf3e476a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80');
    color: #333333; /* dark text color */
    font-weight: bold;
}
a:hover {
    color: #FF0000; /* hover text color */
    text-decoration: underline;
}
  .box {
    display: inline-block;
    padding: 10px;
    border: 1px solid #ccc;
    transition: background-color 0.3s;
  }
  
  .box:hover {
    background-color: skyblue;
  }
  
  .box a {
    color: White;
    color: #000000;
    text-decoration: none;
  }
</style>
</head>
<body>
  <div class="box">
    <a href="createLead">New Lead</a>
  </div>
  <div class="box">
    <a href="listleads">Leads</a>
  </div>
  <div class="box">
    <a href="listcontact">Contacts</a>
  </div>
  <div class="box">
    <a href="listbills">Bill List</a>
  </div>
</body>
</html>