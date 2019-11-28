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
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-title">
                <h1 class="text-center">扫描二维码获取信息</h1>
            </div>

            <div class="modal-body center-block"  >
                <div id="Article-content" class="text-center" style="width: 200px;height: 200px"></div>
                <form class="form-group" action="" method="post">
                    <div class="text-center">
                        <button class="btn btn-default" data-dismiss="modal">返回</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="header">
    <div class="container">
        <div class="row">
            <div class="login span4">
                <h1><a href=""> 欢迎来到<strong>会议管理系统</strong></a>
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
                <p>所有的会议</p>
                <a id="publish" href="/addConf">发布会议</a>
            </div>
        </div>
    </div>
    <span style="color: red">${err}</span>
    <div class="row clear fix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" id="table2excel">
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
                            <a onclick=init("${conf.toStringnew()}") rel="tooltip" data-placement="bottom" data-toggle="modal" data-target="#myModal">二维码</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>



    <div class="row clear fix">
        <div class="col-md-12 column">
            <div class="page-header">
                <p>我发布的会议</p>
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
                <c:forEach var="conf" items="${mypub}">
                    <tr>
                        <td>${conf.CId}</td>
                        <td>${conf.date}</td>
                        <td>${conf.address}</td>
                        <td>${conf.person}</td>
                        <td>${conf.hotel}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/detail?CId=${conf.CId}" >详细信息</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>


    <div class="row clear fix">
        <div class="col-md-12 column">
            <div class="page-header">
                <p>我参加的会议</p>
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
                            <a href="${pageContext.request.contextPath}/detail?CId=${myconf.CId}" >详细信息</a>
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
        $("#Article-content").html("");
        //Article-content 为显示二维码的div id
        $("#Article-content").qrcode({
            render : "canvas",    //设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好
            text:info ,    //扫描二维码后显示的内容,可以直接填一个网址，扫描二维码后自动跳向该链接
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
