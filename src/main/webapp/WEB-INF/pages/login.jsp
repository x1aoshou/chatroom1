<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            margin: 240px 670px;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function () {
            if (${sessionScope.account!=null}){
                $("input[name='remember']").attr("checked","checked");
            }

            $(".register").click(function () {
                window.location.href = "toRegister";
                return false;
            });

            $(".login").click(function () {
                var account = $("input[name='account']").val();
                var password = $("input[name='password']").val();
                var checkbox = $("input[name='remember']").is(":checked");
                if (account===null||account===""){
                    alert("请输入账号");
                    return false;
                }
                if (password===null||password===""){
                    alert("请输入密码");
                    return false;
                }
                alert("开始登陆，请注意后台控制台");
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/login",
                    type:"post",
                    dataType:"text",
                    data:{"account":account,"password":password,"rememberMe":checkbox},
                    success:function (data) {
                        if (data==="fail"){
                            alert("账号或密码错误");
                        }else {
                            alert("登陆成功");
                            window.location.href = "${pageContext.request.contextPath}/user/homePage";
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
            <input type="text" class="form-control" placeholder="Account" name="account" value="${sessionScope.account}"><br>
            <input type="password" class="form-control" placeholder="Password" name="password"><br>
            <input type="checkbox" name="remember"><span style="color: white">记住我</span><br><br>
            <button class="btn btn-primary login" style="background: #F1612A;width: 100px">登 陆</button>
            <button class="btn btn-primary register" style="background: #88D8D4;width: 100px">注 册</button>
        </form>
    </div>
</div>
</body>
</html>
