<%-- 
    Document   : home
    Created on : 2015-12-29, 15:12:24
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>猎聘</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/mycss.css" rel="stylesheet"></link>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
          <!--轮播-->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="float:left;position:relative;">
         
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        
                    </ol>


                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/banner01.jpg" style="height:70%"></img>
                        </div>

                        <div class="item">
                            <img src="images/banner02.jpg" style="height:70%"></img>
                        </div>

                        <div class="item">
                            <img src="images/banner03.jpg" style="height:70%"></img>
                        </div>

                        <div class="item">
                            <img src="images/banner05.jpg" style="height:70%"></img>
                        </div>

                        <div class="item">
                            <img src="images/banner06.jpg" style="height:70%"></img>
                        </div>
                    </div>


                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
            </div>
            
            
                    <div class="btn-group btn-group-justified" role="group" aria-label="..." style="position:relative;top:20px;">
                            <div class="btn-group" role="group">
                                      <a type="button" class="btn btn-default" href="register.jsp"><span class="glyphicon glyphicon-pencil"></span>免费注册账号</a>
                            </div>
                            <div class="btn-group" role="group">
                                      <a type="button" class="btn btn-default" href="lie_login.jsp"> <span class="glyphicon glyphicon-user"></span>猎头查找用户</a>
                            </div>
                            <div class="btn-group" role="group">
                                      <a type="button" class="btn btn-default" href="docHandle"><span class="glyphicon glyphicon-cog"></span>简历管理操作</a>
                            </div>
                    </div>
                    
                   
          
                    <div class="login">
                          <div style="margin-top:10px;">
                                    <form action="Login" method="post">
                                        <div class="form-group col-md-12">
                                                <label for="user" style="color:#ccc">登录求职者账号</label>
                                                <input type="text" class="form-control " id="user" placeholder="账号" name="id">
                                        </div>
                                        <div class="form-group col-md-12">
                                                <input type="password" class="form-control" id="user" placeholder="密码" name="password">
                                        </div>
                                        <div class="form-group col-md-12">
                                                <input type="submit" class="form-control" value="登录" style="background-color:#fa9200;color:#fff"></input>
                                        </div>

                                    </form>
                                    <div class="register">
                                         
                                         还没账号?<a href="register.jsp">立即注册</a>
                                    <div>
                            </div>
                    </div>
                    
                   

    </body>
</html>
