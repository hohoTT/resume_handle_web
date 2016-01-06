
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="com.boot.entity.EmpDetails"%>
<%@page import="java.util.TreeSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.boot.dao.DetailsService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查找用户页面</title>
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
                                
                <img src="images/register.jpg" class="img-thumbnail" style="height:700%"></img>
            </div>
            
            <div class="find_div">
                     <div class="tx_div"><img src="images/tx.png"></img></div>
                     
                     <blockquote class="blockquote-reverse" style="position:relative;left:-66px;top:83px;">
                                      <p><strong>腾讯</strong></p>
                                      <footer>腾讯科技(深圳)有限公司<cite title="Source Title"></cite></footer>
                     </blockquote>
            </div>
            
            <div class="tiao_div">
                    <blockquote style="margin:30px;">
                            <p class="text-primary"><strong>按条件查找</strong></p> 
                    </blockquote>
                <%
                   List l=DetailsService.selectCity();
                   List n=DetailsService.selectName();
                   List s=DetailsService.selectSkill();
                   
                %>
                <form class="form-inline find_form" action="Result" method="post">
                      <div class="form-group has-primary">
                            <label class="control-label">工作城市</label>
                            <select class="form-control" name="city" class="form-control" style="margin-right:30px;">
                                         <optgroup label="从下面选择一个"></optgroup>
                                         <option value="">空</option>
                                         <%
                                            for(int i=0;i<l.size();i++){
                                         %>
                                         <option value="<%=l.get(i)%>"><%=l.get(i)%></option>
                                         
                                         <%}%>
                            </select>
                            
                            <label class="control-label">用户姓氏</label>
                            <select class="form-control" name="name" class="form-control" style="margin-right:30px;">
                                         <optgroup label="从下面选择一个"></optgroup>
                                         <option value="">空</option>
                                         <%
                                            for(int i=0;i<n.size();i++){
                                         %>
                                         <option value="<%=n.get(i)%>"><%=n.get(i)%></option>
                                         <%}%>
                            </select>
                            
                            <label class="control-label">技能</label>
                            <select class="form-control" name="skill" class="form-control" style="margin-right:30px;">
                                         <optgroup label="从下面选择一个"></optgroup>
                                         <option value="">空</option>
                                         <%
                                            for(int i=0;i<n.size();i++){
                                                
                                         %>
                                         <option value="<%=s.get(i)%>"><%=s.get(i)%></option>
                                         <%}%>    
                            </select>
                            
                            <input type="submit" value="开始查找" class="form-control btn-primary"/>
                            
                            
                       <div>
                           
                       
                      
                </form>
                            
               
            </div>
            
            
                               
    </body>
</html>
