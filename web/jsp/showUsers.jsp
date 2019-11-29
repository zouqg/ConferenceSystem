<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zouqianggui
  Date: 2019/11/22
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示页面</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type='text/javascript' src='http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js'></script>
    <script type="text/javascript" src="http://cdn.staticfile.org/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
    <script type="text/javascript" src="static/js/jquery.table2excel.js"></script>
    <script src="static/js/bootstrap.min.js"></script>

    <style>
        #logout{
            background-color: #1b6d85;
            color: white;
            width: 100px;
            line-height: 40px;
            text-decoration: none;
            border-width: 1px;
            border: #1b1e21;
            float: right;
            text-align: center;
            border-radius: 30px;
        }
        #publish{
            background-color: #1b6d85;
            color: white;
            width: 100px;
            line-height: 40px;
            text-decoration: none;
            border-width: 1px;
            border: #1b1e21;
            float: left;
            text-align: center;
            border-radius: 30px;
        }
        p{
            font-size: 20px;
            background-color:chocolate;
            line-height: 40px;
            text-indent: 2em;
        }
    </style>
</head>

<body>

<div class="header">
    <div class="container">
        <div class="row">
            <div class="login span4">
                <h1><a href=""> 欢迎来到<strong>管理员系统</strong></a>
                    <span class="red">.</span></h1>
                <a id="logout" href="/login">退出登录</a>
            </div>
        </div>
    </div>
</div> <%--header--%>


<div class="container">
    <div class="row clear fix">
        <div class="col-md-12 column">
            <div class="page-header">
                <p>所有的用户</p>
            </div>
        </div>
    </div>
    <div class="row clear fix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" id="table2excel">
                <thead>
                <tr>
                    <th>用户Id</th>
                    <th>密码</th>
                    <th>是否为会议发布者</th>
                    <th>设置为</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.UId}</td>
                        <td>${user.password}</td>
                        <td>${user.manager}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/updateUser?isManager=false&UId=${user.UId}" >普通用户</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/updateUser?isManager=true&UId=${user.UId}" >发布者</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>


</body>
</html>
