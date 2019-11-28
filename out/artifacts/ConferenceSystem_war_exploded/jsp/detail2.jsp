<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zouqianggui
  Date: 2019/11/25
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script type='text/javascript' src='http://cdn.staticfile.org/jquery/2.1.1/jquery.min.js'></script>
    <script type="text/javascript" src="http://cdn.staticfile.org/jquery.qrcode/1.0/jquery.qrcode.min.js"></script>
    <script type="text/javascript" src="../static/js/jquery.table2excel.js"></script>
    <style>
        label{
            font-size: larger;
        }
        #publish{
            color: #1e7e34;
            width: 300px;
            line-height: 60px;
            text-decoration: none;
            text-align: right;
            border-radius: 30px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <h3 class="text-center" style="text-align: center;height: 150px;line-height: 150px">
                会议详细信息
            </h3>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12" style="position: relative; left: 40%">
            <div style="width:40%">
                <div >
                    <label>发布人：</label> <span>${conf.UId}</span> <br>
                    <label>会议编号：</label> <span>${conf.CId}</span><br>
                    <label>时间：</label> <span>${conf.date}</span><br>
                    <label>地点：</label> <span>${conf.address}</span><br>
                    <label>宾馆：</label> <span>${conf.hotel}</span><br>
                    <label>嘉宾：</label> <span>${conf.person}</span>
                </div>
            </div>
        </div>
    </div>

    <div class="row-fluid">
        <div class="span12">
            <h3 class="text-center" style="text-align: right;height: 150px;line-height: 150px">
                <a href="/home" id="publish">返回首页</a>
            </h3>
        </div>
    </div>

    <script>
        //filename 导出的excel文件名
        //方法可带filename参数，亦可不带参数直接定义
        function    table2Excel(filename){
            $("#table2excel").table2excel({
                exclude: ".noExl",//class="noExl"的列不导出
                name: "Excel Document Name",
                filename: filename,//文件名称
                fileext: ".xlsx",//文件后缀名
                exclude_img: true,//导出图片
                exclude_links: true,//导出超链接
                exclude_inputs: true//导出输入框内容
            });
        }
    </script>
</div>
</body>
</html>
