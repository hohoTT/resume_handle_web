<%-- 
    Document   : register
    Created on : 2015-12-28, 23:57:57
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>免费注册账号</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/register.css" rel="stylesheet"/>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        
          <img src="images/register.jpg"  class="img-thumbnail" style="height:88%"/>
          <div class="register_div">
                <div style="position:relative;top:10px;">
                    <form action="Register" method="post">
                          <div class="form-group col-md-12">
                            <label for="exampleInputEmail1" style="color:#fff">注册求职者账号</label>
                            <input type="text" class="form-control " id="exampleInputEmail1" placeholder="输入账号" name="id">
                          </div>
                          <div class="form-group col-md-12">
                            <input type="password" class="form-control "  placeholder="输入密码" name="password">
                          </div>
                          <div class="form-group col-md-12">
                            <input type="password" class="form-control "  placeholder="确认密码" name="password">
                          </div>
                          <div class="checkbox form-group col-md-12">
                                <label>
                                    <input type="checkbox" required="true"><p style="color:#fff">接受用户服务协议</p>
                                </label>
                          </div>
                        
                          <div class="form-group col-md-12">
                            <button type="submit" class="btn btn-primary col-md-12">免费注册</button>
                          </div>
                   
                    </form>
                </div>  
            </div>
          
            
        
    </body>
</html>
