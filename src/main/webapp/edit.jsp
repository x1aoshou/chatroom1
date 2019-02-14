<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 老板
  Date: 2019/2/14
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <style type="text/css">
        .bg {
            background: url("${pageContext.request.contextPath}/img/background/edit.jpg");
            float: left;
            height:100%;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .content{
            position:absolute;
            margin: 200px 670px;
        }
        span{
            font-size:15px;
            font-weight: bold;
            color:white;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap-select.js"></script>
    <script type="text/javascript">
        $(function () {

        })
    </script>
</head>
<body>
<div>
    <div class="bg"></div>
    <div class="content">
        <form class="bs-example bs-example-form" role="form">
            <span>账号：</span>${sessionScope.user.account}<br><br>
            <span>昵称：</span><input type="text" class="form-control" placeholder="${sessionScope.user.nickname}" name="nickname"><br>
            <span>性别：</span><input type="text" class="form-control" placeholder="${sessionScope.user.gender==null?"未设置":sessionScope.user.gender}" name="gender"><br>
            <span>生日：</span><input type="date" class="form-control" placeholder="${sessionScope.user.gender==null?"未设置":sessionScope.user.gender}" name="gender"><br>
            <span>职业：</span>
            <select name="occupation" >
                <option>--请选择--</option>
                <option>IT</option>
                <option>制造</option>
                <option>医疗</option>
                <option>金融</option>
                <option>商业</option>
                <option>文化</option>
                <option>艺术</option>
                <option>法律</option>
                <option>教育</option>
                <option>行政</option>
                <option>模特</option>
                <option>空姐</option>
                <option>学生</option>
                <option>其他职业</option>
            </select>
            <button class="btn btn-primary login" style="background: #F1612A;width: 200px">修 改</button>
        </form>
    </div>
</div>
</body>
</html>
