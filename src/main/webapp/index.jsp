<%--
  Created by IntelliJ IDEA.
  User: 老板
  Date: 2019/1/22
  Time: 19:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <style type="text/css">
        .bg {
            background: url("${pageContext.request.contextPath}/img/background/login.jpg");
            float: left;
            height:100%;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .content{
            position:absolute;
            margin: 300px 670px;
        }
    </style>
</head>
<body>
    <div>
        <div class="bg"></div>
        <div class="content">
            <form class="bs-example bs-example-form" role="form" action="user/toLogin">
                <button class="btn btn-primary register" style="background: #b9def0;width: 200px">click me</button>
            </form>
        </div>
    </div>
</body>
</html>
