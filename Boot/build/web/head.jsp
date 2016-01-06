<%-- 
    Document   : head
    Created on : 2015-12-29, 14:38:03
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>页面头</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/head.css" rel="stylesheet"></link>
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
                    <%if(session.getAttribute("userId")!=null){%>
                            <ul class="nav navbar-nav">
                                <li class="active"><a ><span class="glyphicon glyphicon-education" aria-hidden="true"></span><%=session.getAttribute("userId").toString()%></a></li>
                                <li><a href="Remove"><span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span>退出</a></li>
                            </ul>
                    <%}else{%>
                            <ul class="nav navbar-nav">
                                <li class="active"><a ><span class="glyphicon glyphicon-education" aria-hidden="true"></span>用户</a></li>
                                <li><a><span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span>NULL</a></li>
                            </ul>
                    <%}%>
                </nav>
        </div>
    </body>
</html>
