<%--
  Created by IntelliJ IDEA.
  User: zouqianggui
  Date: 2019/11/25
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
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
                请填写会议信息
            </h3>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12">
        </div>
    </div>
    <div class="row-fluid">
        <div class="span12" style="position:relative; left: 30%">
            <form class="span6" style="width: 40%" action="/insertConf">
                <div hidden>
                    <input type="text" class="form-control" value="${UId}" name="CId" >
                    <input type="text" class="form-control" value="${UId}" name="UId" >
                </div>

                <div class="form-group">
                    <label>时间</label>
                    <input type="date" class="form-control" name="date" required>
                </div>
                <div class="form-group">
                    <label >地点</label>
                    <input type="text" class="form-control" name="address" required>
                </div>
                <div class="form-group">
                    <label>嘉宾</label>
                    <input type="text" class="form-control" name="person" required>
                </div>
                <div class="form-group">
                    <label>宾馆</label>
                    <input type="text" class="form-control" name="hotel" required>
                </div>
                <div class="form-group">

                    <div class="row-fluid">
                        <div class="span12">
                            <h3 class="text-center">
                                请勾选参会人员需要填写的信息
                            </h3>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>姓名：</label>
                        <label>
                            <input type="radio" name="needName" value="true" required> 否
                            <input type="radio" name="needName" value="false"> 是
                        </label>
                    </div>
                    <div class="form-group">
                        <label>工作单位：</label>
                        <label>
                            <input type="radio" name="needCompany" value="true" required> 否
                            <input type="radio" name="needCompany" value="false" required> 是
                        </label>
                    </div>
                    <div class="form-group">
                        <label>身份证：</label>
                        <label>
                            <input type="radio" name="needIdentityId" value="true" required> 否
                            <input type="radio" name="needIdentityId" value="false"> 是
                        </label>
                    </div>
                    <div class="form-group">
                        <label>电话：</label>
                        <label>
                            <input type="radio" name="needPhone" value="true" required> 否
                            <input type="radio" name="needPhone" value="false"> 是
                        </label>
                    </div>
                    <div class="form-group">
                        <label>性别：</label>
                        <label>
                            <input type="radio" name="needSex" value="true" required> 否
                            <input type="radio" name="needSex" value="false"> 是
                        </label>
                    </div>
                    <div class="form-group">
                        <label>房间：</label>
                        <label>
                            <input type="radio" name="needRoom" value="true" required> 否
                            <input type="radio" name="needRoom" value="false"> 是
                        </label>
                    </div>
<%--                    <input type="submit">--%>

                <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>
    </div>
</div>

<script>

</script>
</body>
</html>
