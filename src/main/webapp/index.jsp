<!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Metis</title>

    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">

    <meta name="msapplication-TileColor" content="#5bc0de"/>
    <meta name="msapplication-TileImage" content="img/metis-tile.png"/>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

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

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/"
        };
    </script>
    <link rel="stylesheet" href="css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>

</head>

<body class="  ">
<div class="bg-dark dk" id="wrap">
    <div id="top">
        <!-- .navbar -->
        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container-fluid">


                <!-- Brand and toggle get grouped for better mobile display -->
                <header class="navbar-header">

                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.html" class="navbar-brand"><img src="img/logo.png" alt=""></a>

                </header>


                <div class="topnav">
                    <div class="btn-group">
                        <a data-placement="bottom" data-original-title="Fullscreen" data-toggle="tooltip"
                           class="btn btn-default btn-sm" id="toggleFullScreen">
                            <i class="glyphicon glyphicon-fullscreen"></i>
                        </a>
                    </div>
                    <div class="btn-group">
                        <a data-placement="bottom" data-original-title="Messages" href="#" data-toggle="tooltip"
                           class="btn btn-default btn-sm">
                            <span class="glyphicon-envelope"></span>
                            <span class="label label-danger">4</span>
                        </a>
                    </div>
                    <div class="btn-group">
                        <a href="login.html" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom"
                           class="btn btn-metis-1 btn-sm">
                            <span class="glyphicon-log-out"></span>
                        </a>
                    </div>
                </div>


                <div class="collapse navbar-collapse navbar-ex1-collapse">

                    <!-- .nav -->
                    <ul class="nav navbar-nav">
                        <li><a href="dashboard.html">Dashboard</a></li>
                        <li><a href="table.html">Tables</a></li>
                        <li class='dropdown '>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Form Elements <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="form-general.html">General</a></li>
                                <li><a href="form-validation.html">Validation</a></li>
                                <li><a href="form-wysiwyg.html">WYSIWYG</a></li>
                                <li><a href="form-wizard.html">Wizard &amp; File Upload</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- /.nav -->
                </div>
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- /.navbar -->
        <header class="head">
            <div class="search-bar">
                <form class="main-search" action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Live Search ...">
                        <span class="input-group-btn">
                                                <button class="btn btn-primary btn-sm text-muted" type="button">
                                                    <i class="fa fa-search"></i>
                                                </button>
                                            </span>
                    </div>
                </form>
                <!-- /.main-search -->                                </div>
            <!-- /.search-bar -->
            <div class="main-bar">
                <h3>
                    <i class="fa fa-home"></i>&nbsp;
                    Metis
                </h3>
            </div>
            <!-- /.main-bar -->
        </header>
        <!-- /.head -->
    </div>
    <!-- /#top -->
    <div id="left">
        <div class="media user-media bg-dark dker">
            <div class="user-media-toggleHover">
                <span class="fa fa-user"></span>
            </div>
            <div class="user-wrapper bg-dark">
                <a class="user-link" href="">
                    <img class="media-object img-thumbnail user-img" alt="User Picture" src="img/user.gif">
                    <span class="label label-danger user-label">16</span>
                </a>

                <div class="media-body">
                    <h5 class="media-heading">Archie</h5>
                    <ul class="list-unstyled user-info">
                        <li><a href="">Administrator</a></li>
                        <li>Last Access : <br>
                            <small><i class="fa fa-calendar"></i>&nbsp;16 Mar 16:32</small>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- #menu -->
        <ul id="menu" class="bg-blue dker">
            <li class="nav-header">Menu</li>
            <li class="nav-divider"></li>
            <li class="">
                <a href="dashboard.html">
                    <i class="fa fa-dashboard"></i>
                    <span class="link-title">&nbsp;Dashboard</span>
                </a>
            </li>
            <li class="">
                <a href="javascript:;">
                    <i class="fa fa-building "></i>
                    <span class="link-title">Layouts</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="collapse">
                    <li>
                        <a href="boxed.html">
                            <i class="fa fa-angle-right"></i>&nbsp; Boxed Layout </a>
                    </li>
                </ul>
            </li>




            <%--间隔--%>
            <li class="nav-divider"></li>

        </ul>
        <!-- /#menu -->
    </div>
    <!-- /#left -->
    <div id="content">
        <div class="outer">
            <div class="inner bg-light lter">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
        <!-- /.outer -->
    </div>
    <!-- /#content -->

<!--jQuery -->
<script src="lib/jquery/jquery.js"></script>


<!--Bootstrap -->
<script src="lib/bootstrap/js/bootstrap.js"></script>
<!-- MetisMenu -->
<script src="lib/metismenu/metisMenu.js"></script>
<!-- onoffcanvas -->
<script src="lib/onoffcanvas/onoffcanvas.js"></script>
<!-- Screenfull -->
<script src="lib/screenfull/screenfull.js"></script>


<!-- Metis core scripts -->
<script src="js/core.js"></script>
<!-- Metis demo scripts -->
<script src="js/app.js"></script>


<script src="js/style-switcher.js"></script>
</body>

</html>
