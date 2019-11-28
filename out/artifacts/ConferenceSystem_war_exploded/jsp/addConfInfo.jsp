<%--
  Created by IntelliJ IDEA.
  User: zouqianggui
  Date: 2019/11/25
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <h3 class="text-center">
                请填写会议需要的信息
            </h3>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12" style="position:relative; left: 30%">
            <form class="span6" style="width: 40%" action="/insertInfo">

                <div hidden>
                    <input type="text" class="form-control" value="${conf.CId}" name="CId">
                    <input type="text" class="form-control" value="${UId}" name="UId" >
                </div>

                <div class="form-group" id="name">
                    <label>姓名</label>
                    <input type="text" class="form-control" name="Name" >
                </div>
                <div class="form-group" id="com" hidden="${conf.needName}">
                    <label >工作单位</label>
                    <input type="text" class="form-control" name="Company" >
                </div>
                <div class="form-group" id="id">
                    <label>身份证号</label>
                    <input type="text" class="form-control" name="IdentityId">
                </div>
                <div class="form-group" id="phone">
                    <label>手机</label>
                    <input type="text" class="form-control" name="phone">
                </div>
                <div class="form-group" id="sex">
                    <label>性别</label>
                    <br>
                    <label><input type="radio" name="sex" value="男生">男生</label> <br>
                    <label><input type="radio" name="sex" value="女生">女生</label>
                </div>

                <div class="form-group" id="room">
                    <label>
                        <input type="checkbox" name="room"> 需要预定房间
                    </label>
                </div>

                <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>
    </div>
</div>

<script>
    function  init() {
        if(${conf.needName})
            document.getElementById("name").style.display = "inline";
        else
            document.getElementById("name").style.display = "none";
        if(${conf.needCompany})
            document.getElementById("com").style.display = "inline";
        else
            document.getElementById("com").style.display = "none";
        if(${conf.needIdentityId})
            document.getElementById("id").style.display = "inline";
        else
            document.getElementById("id").style.display = "none";
        if(${conf.needPhone})
            document.getElementById("phone").style.display = "inline";
        else
            document.getElementById("phone").style.display = "none";
        if(${conf.needSex})
            document.getElementById("sex").style.display = "inline";
        else
            document.getElementById("sex").style.display = "none";
    }
    init();
</script>
</body>
</html>
