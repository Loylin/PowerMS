<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/16
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath = request.getScheme() + "://" + request.getServerName() + ":" +
        request.getServerPort() + request.getContextPath();%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>系统登录</title>
    <link href="css/common/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="css/modules/maintenance/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<!--首部-->
<div class="header">
    <!-- 首部图片与title -->
    <div class="col-md-3 image bg-success">
        <img src="static/image/logo.jpg" class="img-responsive">
    </div>

    <div class="col-md-9 bg-success title">
        <h3 class="text-title text-center bg-success">湘能楚天电力维护系统</h3>
    </div>
</div>

<!-- 主内容区 -->
<div class="container">
    <!-- 登录表单 -->
    <div class="col-md-4 col-border col-md-offset-4">
        <form action="#" id="login-form">
            <div class="bg-info">
                <h4 class="text-center login-title">用户登录</h4>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="account" name="account" placeholder="用户名">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" id="psw" name="psw" placeholder="密码">
            </div>
            <p class="text-danger" id="error-tips"></p>
            <button class="btn btn-info login-btn" id="btn-login">确定</button>
            <address><a href="#" class="forgetpsw"><p class="text-right">忘记密码</p></a></address>
        </form>
    </div>

    <!-- 尾部信息 -->
    <nav class="navbar navbar-default navbar-fixed-bottom footer-navbar">
        <p class="text-center">CopyRight @ 湘能楚天电力集团有限公司 2017</p>
    </nav>
</div>
</body>
<script src="<%=basePath%>/js/common/seajs/sea.js"></script>
<script>
    seajs.config({
       base:"<%=basePath%>/js",
        charset:"utf-8",
        alias:{
           'jquery':'common/jquery/jquery-3.2.1.min',
            'layer':'common/layer/layer',
            'bootstrap':'common/bootstrap/js/bootstrap.min'
        },
        preload:["jquery"]
    });
    seajs.use('./js/login', function (a) {
        layer.config({
            path:"<%=basePath%>/js/common/layer/"
        });
    });
</script>
</html>
