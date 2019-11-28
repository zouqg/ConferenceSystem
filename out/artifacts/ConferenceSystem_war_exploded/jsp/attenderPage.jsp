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
    <span style="color: red">${err}</span>
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
                <c:forEach var="conf" items="${allConf}">
                    <tr>
                        <td>${conf.CId}</td>
                        <td>${conf.date}</td>
                        <td>${conf.address}</td>
                        <td>${conf.person}</td>
                        <td>${conf.hotel}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/addConfInfo?CId=${conf.CId}" >参加</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/detail?CId=${conf.CId}" >查看详细信息</a>
                            &nbsp;|&nbsp;
                            <a onclick=init("${conf.toStringnew()}")>查看二维码</a>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div id="Article-content" style="width: 200px;height: 200px">

    </div>

    <div class="row clear fix">
        <div class="col-md-12 column">
            <div class="page-header">
                <small>我参加的会议</small>
            </div>
        </div>
    </div>

    <div class="row clear fix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>会议编号</th>
                    <th>发起人</th>
                    <th>姓名</th>
                    <th>公司</th>
                    <th>身份证</th>
                    <th>手机</th>
                    <th>是否需要房间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="myconf" items="${myConf}">
                    <tr>
                        <td>${myconf.CId}</td>
                        <td>${myconf.UId}</td>
                        <td>${myconf.name}</td>
                        <td>${myconf.company}</td>
                        <td>${myconf.identityId}</td>
                        <td>${myconf.phone}</td>
                        <td>${myconf.room}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/detail?CId=${myconf.CId}" >查看详细信息</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>



<script type="text/javascript">

    function init(info) {
        //Article-content 为显示二维码的div id
        $("#Article-content").qrcode({
            render : "canvas",    //设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好
            text:"test:"+info ,    //扫描二维码后显示的内容,可以直接填一个网址，扫描二维码后自动跳向该链接
            width : "200",               //二维码的宽度
            height : "200",              //二维码的高度
            background : "#ffffff",       //二维码的后景色
            foreground : "#000000",        //二维码的前景色
            // src: '/img/logo.jpg'             //二维码中间的图片
        });
    }
</script>
</body>
</html>
