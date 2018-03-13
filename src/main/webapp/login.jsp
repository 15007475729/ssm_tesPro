<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/1/26
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login Page</title>

    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">

    <meta name="msapplication-TileColor" content="#5bc0de"/>
    <meta name="msapplication-TileImage" content="img/metis-tile.png"/>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.css">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="css/main.css">

    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="lib/metismenu/metisMenu.css">

    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="lib/onoffcanvas/onoffcanvas.css">

    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="lib/animate.css/animate.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="login">

<div class="form-signin">
    <div class="text-center">
        <img src="img/logo.png" alt="Metis Logo">
    </div>
    <hr>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            <form action="login.action">
                <p class="text-muted text-center">
                    学生考试系统
                </p>
                <input type="text" placeholder="Username" name="uname" class="form-control top">
                <input type="password" placeholder="Password" name="pwd" class="form-control bottom">
                <%--<div class="checkbox">--%>
                <%--<label>--%>
                <%--<input type="checkbox"> 记住密码--%>
                <%--</label>--%>
                <%--</div>--%>
                <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
            </form>
            <a href="index.action">asdasd</a>
        </div>
    </div>
</div>


<!--jQuery -->
<script src="lib/jquery/jquery.js"></script>

<!--Bootstrap -->
<script src="lib/bootstrap/js/bootstrap.js"></script>
</body>

</html>
