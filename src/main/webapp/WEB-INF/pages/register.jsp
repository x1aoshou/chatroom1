<%--
  Created by IntelliJ IDEA.
  User: 老板
  Date: 2019/1/22
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css">

<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Register</title>
    <style type="text/css">
        .bg {
            background: url("${pageContext.request.contextPath}/img/background/register.jpg");
            float: left;
            height:100%;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .content{
            position:absolute;
            margin: 220px 670px;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".return").click(function () {
                window.location.href = "toLogin";
                return false;
            });

            $(".register").click(function () {
                var account = $("input[name='account']").val();
                var password = $("input[name='password']").val();
                var nickname = $("input[name='nickname']").val();
                if (account===null||account===""){
                    alert("请输入账号");
                    return false;
                }
                if (password===null||password===""){
                    alert("请输入密码");
                    return false;
                }
                if (nickname===null||nickname===""){
                    alert("请输入昵称");
                    return false;
                }
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/register",
                    type:"post",
                    dataType:"text",
                    data:{"account":account,"password":password,"nickname":nickname},
                    success:function (data) {
                        if (data==="fail"){
                            alert("账号已存在，请重新注册");
                        }else {
                            alert("注册成功");
                            window.location.href = "${pageContext.request.contextPath}/user/toLogin";
                        }
                    }
                });
                return false;
            })
        })
    </script>
</head>
<body>
<div>
    <div class="bg"></div>
    <div class="content">
        <form class="bs-example bs-example-form" role="form">
            <input type="text" class="form-control" placeholder="Account" name="account" required="required"><br>
            <input type="password" class="form-control" placeholder="Password" name="password" required="required"><br>
            <input type="text" class="form-control" placeholder="Nickname" name="nickname" required="required"><br>
            <button class="btn btn-primary register" style="background: #88D8D4;width: 100px">注 册</button>
            <button class="btn btn-primary return" style="background: #c4e3f3;width: 100px">返 回</button>
        </form>
    </div>
</div>
</body>
</html>
