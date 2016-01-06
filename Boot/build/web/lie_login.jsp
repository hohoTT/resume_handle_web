<%-- 
    Document   : lie_login
    Created on : 2015-12-30, 23:18:09
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>猎头登录页面</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/head.css" rel="stylesheet"></link>
        <link href="css/mycss.css" rel="stylesheet"></link>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
          <div class="head">
                <div class="logo"><img src="images/lie.png"></img></div>
                <nav class="navbar-inverse" style="float:left;width:179px;position:relative;left:163px;">
                    <ul class="nav navbar-nav">
                            <li><a href="home.jsp">首页</a></li>
                            <li><a href="#">职位</a></li>
                            <li><a href="#">社区</a></li>
                    </ul>
                </nav>
                
                <nav class="navbar-inverse" style="float:left;width:162px;position:relative;left:678px;">
                   
                            <ul class="nav navbar-nav">
                                <li class="active"><a ><span class="glyphicon glyphicon-user" aria-hidden="true"></span>猎头</a></li>
                                <li><a ><span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span>登录中</a></li>
                            </ul>
                    
                            
                </nav>
                
                <div>
                      <img src="images/lie_logo.jpg"></img>
                </div>
                
                <div class="login" style="top:135px;">
                          <div style="margin-top:10px;">
                                    <form action="LieLogin" method="post">
                                        <div class="form-group col-md-12">
                                                <label for="user" style="color:#ccc">登录猎头账号</label>
                                                <input type="text" class="form-control " id="user" placeholder="账号" name="id">
                                        </div>
                                        <div class="form-group col-md-12">
                                                <input type="password" class="form-control" id="user" placeholder="密码" name="password">
                                        </div>
                                        <div class="form-group col-md-12">
                                                <input type="submit" class="form-control" value="猎头登录" style="background-color:#fa9200;color:#fff"></input>
                                        </div>
                                        <div class="register">
                                         
                                        忘记密码?<a href="">立即找回</a>
                                    <div>

                                    </form>
                                    
                            </div>
                    </div>
        </div>
    </body>
</html>
