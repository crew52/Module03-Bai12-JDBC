<%--
  Created by IntelliJ IDEA.
  User: dungn
  Date: 2/6/2025
  Time: 8:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Table</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
            cursor: pointer;
        }

        .btn {
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            margin-right: 5px;
            display: inline-block;
        }

        .btn-detail {
            background-color: #3498db;
            color: white;
        }

        .btn-edit {
            background-color: #f1c40f;
            color: black;
        }

        .btn-delete {
            background-color: #e74c3c;
            color: white;
        }

        .btn:hover {
            opacity: 0.8;
        }

    </style>
</head>
<body>
<h2>User List ${userList.size()}</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${userList}" var="user">
    <tr>
        <td>${user.getId()}</td>
        <td>${user.getName()}</td>
        <td>${user.getEmail()}</td>
        <td>${user.getCountry()}</td>
        <td>
        <a href="UserServlet?action=detail&id=${user.getId()}" class="btn btn-detail">Detail</a>
        <a href="UserServlet?action=edit&id=${user.getId()}" class="btn btn-edit">Edit</a>
        <a href="UserServlet?action=delete&id=${user.getId()}" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

