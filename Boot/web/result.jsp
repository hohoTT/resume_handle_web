<%-- 
    Document   : result
    Created on : 2016-1-3, 18:49:40
    Author     : 庞宇
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.boot.entity.EmpDetails"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查询结果页面</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/head.css" rel="stylesheet"></link>
        <link href="css/mycss.css" rel="stylesheet"></link>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
          <%
             String name=session.getAttribute("lietou").toString();
         %>
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
                                <li class="active"><a ><span class="glyphicon glyphicon-user" aria-hidden="true"></span><%=name%></a></li>
                                <li><a href="Remove"><span class="glyphicon glyphicon-minus-sign" aria-hidden="true"></span>退出</a></li>
                            </ul>
                </nav>
                                
              
            </div>
          <%
             List l=(List)request.getAttribute("result");
             
             if(l==null){
          %>
              
          <%}else{%>
            <table class="table table-striped table-bordered table-hover table-condensed">
                  <tr>
		           <td>姓名</td>
			   <td>生日</td>
		           <td>学位</td>
                           <td>学校</td>
                           <td>技能</td>
                           <td>家庭住址</td>
                           <td>手机号</td>
                           <td>QQ</td>
                           <td>邮箱</td>
                           <td>期望城市</td>
                           <td>期望薪资</td>
	         </tr>
          <%
             for(int i=0;i<l.size();i++){
                 EmpDetails e=(EmpDetails)l.get(i);
          %>
                 <tr>
		           <td><%=e.getName()%></td>
			   <td><%=e.getBirthday()%></td>
		           <td><%=e.getQualification()%></td>
                           <td><%=e.getSchool()%></td>
                           <td><%=e.getSkill()%></td>
                           <td><%=e.getAddress()%></td>
                           <td><%=e.getMobile()%></td>
                           <td><%=e.getQq()%></td>
                           <td><%=e.getEmail()%></td>
                           <td><%=e.getDesiredCity()%></td>
                           <td><%=e.getSalary()%></td>
	         </tr>
          <%}}%>
           <table>
           <div style="text-align:center">
                     <a href="find.jsp" class="btn btn-default">继续查询</a>
           </div>
               
           
           <hr>
               
           
           
       </body>
</html>
