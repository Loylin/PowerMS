<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/18
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>电力维护平台</title>
    <link href="../static/common/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="../css/modules/maintenance/home.css" type="text/css" rel="stylesheet">
    <script src="../static/common/jquery/jquery-3.2.1.min.js"></script>
    <script src="../static/common/bootstrap/js/bootstrap.min.js"></script>
    <script src="../static/common/layer/layer.js"></script>
    <script src="../js/modules/maintenance/home.js"></script>
</head>
<body>

<!--顶部导航条-->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!--品牌图标 -->
        <div class="navbar-header">
            <a href="#" class="navbar-brand img-a"><img class="img-rounded img-responsive img-logo"
                                                        src="../static/image/logo.jpg" alt="Brand"></a>
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#navbar-list">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="navbar-list">
            <ul class="nav navbar-nav plate">
                <li class="active"><a href="#">业务平台 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">运维平台</a></li>
                <li><a href="#">授权平台</a></li>
            </ul>
            <!--登录信息-->
            <div class="photo navbar-right">
                <a href="#"><img src="../static/image/userimg.jpg" class="img-responsive"></a>
            </div>
            <!--表单-->
            <form class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control search-input" placeholder="请输入业务名称">
                </div>
                <button class="btn btn-primary">搜索</button>
            </form>
        </div>
    </div>
</nav>

<!--左侧的导航栏-->
<div class="left-nav col-md-2">
    <!--列表-->
    <h4 class="text-center service-list">业务列表</h4>
    <!--导航-->
    <ul class="nav nav-pills nav-stacked" id="nav-list">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">设备管理</a></li>
        <li><a href="#">设备巡视</a></li>
        <li><a href="#">检修管理</a></li>
        <li><a href="#">双票管理</a></li>
        <li><a href="#">缺陷管理</a></li>
        <li><a href="#">运行记录</a></li>
    </ul>
</div>
</body>
</html>