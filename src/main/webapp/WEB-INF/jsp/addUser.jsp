<%--
  Created by IntelliJ IDEA.
  User: jiahao
  Date: 18-11-22
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>新增用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" >
    <div class="row clearfix">
        <div class="col-md-10 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-10 column">
            <div class="page-header">
                <h1>
                    <small>新增用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="" name="userForm">
        用户名称：<input type="text" name="userName"><br><br>
        用户密码：<input type="password" name="userPassword">
        <label for="repwd" style="margin-left: 10px">确认密码：</label>
        <input type="password" name="pwdRepeat" id="repwd"><br><br>
        用户类型：<select name="userType" id="selUser">
            <option>请选择</option>
            <option value="manager">管理员</option>
            <option value="user">普通用户</option>
        </select>
        <label for="txtDate" style="margin-left: 100px">出生日期：</label>
        <input name="userBirthday" type="date" id="txtDate"/><br/><br>
        性别：<input name="userGender" type="radio" value="男"/>男
        <input name="userGender" type="radio" value="女"/>女
        <label style="margin-left: 140px">爱好：</label>
        <input type="checkbox" name="userHobby" value="阅读" id="read"/>
        <label for="read">阅读</label>
        <input type="checkbox" name="userHobby" value="音乐" id="music"/>
        <label for="music">音乐</label>
        <input type="checkbox" name="userHobby" value="运动" id="sport"/>
        <label for="sport">运动</label><br><br>
        用户邮箱：<input type="email" name="userEmail"><br><br>
        自我介绍：<textarea name="userIntroduction" rows="3" cols="30" id="txtIntro"></textarea><br/><br>
        <a class="btn btn-primary" onclick="addUser()">添加</a>
        <a class="btn btn-primary" name="reset">重置</a>

    </form>

    <script type="text/javascript">
        function addUser() {
            var form = document.forms[0];
            form.action = "<%=basePath %>user/addUser";
            form.method = "post";
            form.submit();
        }
    </script>
</div>

