<%--
  Created by IntelliJ IDEA.
  User: jiahao
  Date: 18-11-22
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>User列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
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
                    <small>用户列表 —— 显示用户</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${path}/user/toAddUser">新增</a>
        </div>
        <div class="col-md-4 column">
            <form action="" name="userForm">
                用户名称：<input type="text" name="userName"/>
                <a class="btn btn-primary" onclick="findUser()">查询</a>
            </form>
            <script type="text/javascript">
                function findUser() {
                    var form = document.forms[0];
                    form.action = "<%=appPath %>/user/findUser";
                    form.method = "post";
                    form.submit();
                }
            </script>

        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户名</th>
                    <th>类型</th>
                    <th>性别</th>
                    <th>爱好</th>
                    <th>出生日期</th>
                    <th>电子邮箱</th>
                    <th>介绍</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${user.userName}</td>
                        <td>${user.userType}</td>
                        <td>${user.userGender}</td>
                        <td>${user.userHobby}</td>
                        <td>${user.userBirthday}</td>
                        <td>${user.userEmail}</td>
                        <td>${user.userIntroduction}</td>
                        <td>
                            <a href="${path}/user/toUpdateUser?name=${user.userName}">更改</a> |
                            <a href="<%=appPath%>/user/del/${user.userName}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

