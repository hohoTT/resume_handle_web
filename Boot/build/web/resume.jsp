<%-- 
    Document   : resume
    Created on : 2015-12-29, 14:11:47
    Author     : 庞宇
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>录入个人简历页面</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/mycss.css" rel="stylesheet"></link>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
          <jsp:include page="head.jsp"/>
          <div class="resume">
                    <form class="form-horizontal" action="SaveDetails" method="post">
                              <p style="font-size:17px;text-align: center;" class="text-muted">录入简历详细信息</p>
                              
                              <div class="form-group">
                                        <label for="input2" class="col-md-2 control-label">姓名</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input2" placeholder="姓名" name="name">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input3" class="col-md-2 control-label">生日</label>
                                        <div class="col-md-8">
                                          <input type="date" class="form-control" id="input3" placeholder="生日" name="birthday">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input5" class="col-md-2 control-label">资格证书</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input5" placeholder="资格证书" name="qualification">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input6" class="col-md-2 control-label">学校</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input6" placeholder="学校" name="school">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input7" class="col-md-2 control-label">核心技能</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input7" placeholder="核心技能" name="skill">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input8" class="col-md-2 control-label">家庭住址</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input8" placeholder="家庭住址" name="address">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input9" class="col-md-2 control-label">手机号</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input9" placeholder="手机号" name="mobile">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input10" class="col-md-2 control-label">QQ号</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input10" placeholder="QQ号" name="qq">
                                        </div>
                              </div>
                               <div class="form-group">
                                        <label for="input11" class="col-md-2 control-label">邮件</label>
                                        <div class="col-md-8">
                                          <input type="email" class="form-control" id="input11" placeholder="邮件" name="email">
                                        </div>
                              </div>
                               <div class="form-group">
                                        <label for="input12" class="col-md-2 control-label">期望城市</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input12" placeholder="期望城市" name="desiredCity">
                                        </div>
                              </div>
                               <div class="form-group">
                                        <label for="input13" class="col-md-2 control-label">期望薪资</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input13" placeholder="期望薪资" name="salary">
                                        </div>
                              </div>
                              <div class="action_div">
                                    <div class="btn-group-vertical" role="group">
                                                <input type="submit" class="btn btn-success" value="信息录入"></button>
                                                <a class="btn btn-default" href="query.jsp" role="button">查看信息</a>
                                                <a class="btn btn-info" href="update.jsp" role="button">修改信息</a>
                                    </div>
                              </div>
                    </form>
          </div>
    </body>
</html>
