<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>

<body>
<div class="container">
    <div class="row clear fix">
        <div class="col-md-12 column">
            <div class="page-header">
                <small>所有的会议</small>
            </div>
        </div>
    </div>

    <div class="row clear fix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>会议编号</th>
                    <th>时间</th>
                    <th>地址</th>
                    <th>人物</th>
                    <th>宾馆</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="myconf" items="${allConf}">
                    <tr>
                        <td>${myconf.CId}</td>
                        <td>${myconf.date}</td>
                        <td>${myconf.address}</td>
                        <td>${myconf.person}</td>
                        <td>${myconf.hotel}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/update?id=${book.bookId}" >参加</a>
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
