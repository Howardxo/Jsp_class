<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MySQL DB 查詢範例</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            height: auto;
            background-color: #f9f9f9;
        }

        .container {
            width:600px;
            text-align: center;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }

        .form-group {
            margin: 10px 0;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            background-color: #007BFF;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }
    </style>
    <script type="text/javascript">
        let errMsg = '${errMsg}';
        if (errMsg != '') {
            alert(errMsg);
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>MySQL DB 查詢範例</h1>
        <form action="doQueryCity" method="post">
            <div class="form-group">
                <label for="countryCode">
                    <span style="color:red">*</span> CountryCode
                </label>
                <input type="text" id="countryCode" name="countryCode" value="${countryCode }">
            </div>
            <div class="form-group">
                <label for="district">District</label>
                <input type="text" id="district" name="district" value="${district }">
            </div>
            <input type="submit" value="送出">
        </form>
        <hr/>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>CountryCode</th>
                <th>District</th>
                <th>Population</th>
            </tr>
            <c:if test="${not empty cityRst }">
                <c:forEach items="${cityRst}" var="item">
                    <tr>
                        <td>${item.ID }</td>
                        <td>${item.Name }</td>
                        <td>${item.CountryCode }</td>
                        <td>${item.District }</td>
                        <td>${item.Population }</td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
    </div>
</body>
</html>
