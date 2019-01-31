<%--
  Created by IntelliJ IDEA.
  User: jiahao
  Date: 18-11-22
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>修改用户</title>
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
                    <small>修改用户</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="" name="userForm">
        用户名称：<input type="text" name="userName" value="${user.userName}" readonly="readonly"/><br><br>
        用户密码：<input type="password" name="userPassword" value="${user.userPassword}"/><br><br>
        <label for="selUser">用户类型：</label>
        <c:if test="${user.userType eq 'manager'}">
            <select name="userType" id="selUser">
                <option value="manager" selected="selected">管理员</option>
                <option value="user">普通用户</option>
            </select>
        </c:if>
        <c:if test="${user.userType eq 'user'}">
            <select name="userType" id="selUser">
                <option value="manager">管理员</option>
                <option value="user" selected="selected">普通用户</option>
            </select>
        </c:if>
        <c:if test="${user.userType eq null or user.userType eq'请选择'}">
            <select name="userType" id="selUser">
                <option>请选择</option>
                <option value="manager">管理员</option>
                <option value="user">普通用户</option>
            </select>
        </c:if>
        <label for="txtDate" style="margin-left: 100px">出生日期：</label>
        <input name="userBirthday" type="date" id="txtDate" value="${user.userBirthday}"/><br><br>
        性别：
        <c:if test="${user.userGender eq '男'}">
            <input type="radio" name="userGender" value="男" id="male" checked="checked"/>
            <label for="male">男</label>
            <input type="radio" name="userGender" value="女" id="female"/>
            <label for="female">女</label>
        </c:if>
        <c:if test="${user.userGender eq '女'}">
            <input type="radio" name="userGender" value="男" id="male"/>
            <label for="male">男</label>
            <input type="radio" name="userGender" value="女" id="female" checked="checked"/>
            <label for="female">女</label>
        </c:if>
        <c:if test="${user.userGender ne '男' and user.userGender ne '女'}">
            <input type="radio" name="userGender" value="男" id="male"/>
            <label for="male">男</label>
            <input type="radio" name="userGender" value="女" id="female" />
            <label for="female">女</label>
        </c:if>
        <label style="margin-left: 140px">爱好：</label>
        <input type="checkbox" name="userHobby" value="阅读" id="read"/>
        <label for="read">阅读</label>
        <input type="checkbox" name="userHobby" value="音乐" id="music"/>
        <label for="music">音乐</label>
        <input type="checkbox" name="userHobby" value="运动" id="sport"/>
        <label for="sport">运动</label><br><br>
        <script type="text/javascript">
            $(function(){
                var json = "${user.userHobby}";
                $.each(json,function(n,value) {
                    $("input[name='userHobby']").each(function () {
                        if ($(this).val() === value.type) {
                            $(this).prop("checked",true);
                        }
                    });
                });
            });
        </script>


        用户邮箱：<input type="email" name="userEmail" value="${user.userEmail}"/><br><br>
        自我介绍：<textarea name="userIntroduction" rows="3" cols="30" id="txtIntro">${user.userIntroduction}</textarea><br/><br>
        <a class="btn btn-primary" onclick="updateUser()">提交</a>
    </form>
    <script type="text/javascript">
        function updateUser() {
            var form = document.forms[0];
            form.action = "<%=basePath %>user/updateUser";
            form.method = "post";
            form.submit();
        }
    </script>
</div>
