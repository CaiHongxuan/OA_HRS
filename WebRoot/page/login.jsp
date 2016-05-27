<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from aqvatarius.com/themes/aquarius_v16/index.jsp by HTTrack Website Copier/3.x [XR&CO'2010], Tue, 09 Apr 2013 11:48:56 GMT -->
<head>        
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>人事管理后台系统-管理员登录</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/respond.js"></script>
    <script src="js/admin.js"></script>
    <link type="image/x-icon" href="/favicon.ico" rel="shortcut icon" />
    <link href="/favicon.ico" rel="bookmark icon" />
</head>

<body>
<div class="container">
    <div class="line">
        <div class="xs6 xm4 xs3-move xm4-move">
            <br /><br />
            <div class="media media-y">
                <a href="#" target="_blank"><img src="img/logo.png" class="radius" alt="后台管理系统" /></a>
            </div>
            <br /><br />
            <form action="index.html" method="post">
            <div class="panel">
                <div class="panel-head"><strong>登录人事管理后台系统</strong></div>
                <div class="panel-body" style="padding:30px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <label for="user">用户名：</label>
                            <input type="text" class="input" name="admin" placeholder="登录账号" data-validate="required:请填写账号,length#>=5:账号长度不符合要求" />
                            <span class="icon icon-user"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <label for="pwd">密码：</label>
                            <input type="password" class="input" name="password" placeholder="登录密码" data-validate="required:请填写密码,length#>=8:密码长度不符合要求" />
                            <span class="icon icon-key"></span>
                        </div>
                    </div>
                    <!-- <div class="form-group">
                        <div class="field">
                            <input type="text" class="input" name="passcode" placeholder="填写右侧的验证码" data-validate="required:请填写右侧的验证码" />
                            <img src="images/passcode.jpg" width="80" height="32" class="passcode" />
                        </div>
                    </div> -->
                </div>
                <div class="panel-foot text-center"><button class="button button-block bg-main text-big">立即登录后台</button></div>
            </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>