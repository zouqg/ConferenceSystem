<%--
  Created by IntelliJ IDEA.
  User: zouqianggui
  Date: 2019/11/24
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clear fix">
        <div class="col-md-12 column">
            <div class="page-header">
                <small>登录页面</small>
            </div>
        </div>
    </div>
    <div class="row clear fix ">
        <div class="col-md-3 center-block">
                <form  name="loginForm" action="/validate">
                    <div class="form-group">
                        <input type="text" class="form-control" name="UId"  placeholder="用户名">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="密码">
                    </div>
                    <button type="submit" class="btn btn-default" >登录</button>
                    <span style="color:#31b0d5;">${err}</span>
                </form>
        </div>
    </div>
</div>

</body>
</html>
