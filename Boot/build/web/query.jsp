<%-- 
    Document   : query
    Created on : 2015-12-30, 14:32:42
    Author     : 庞宇
--%>

<%@page import="com.boot.entity.EmpDetails"%>
<%@page import="com.boot.dao.DetailsService"%>
<%@page import="com.boot.entity.Employee"%>
<%@page import="com.boot.dao.EmployeeService"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.boot.util.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查看简历详情页面</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/mycss.css" rel="stylesheet"></link>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
          <%
               int int_id=(Integer)session.getAttribute("userId");
              EmpDetails d=DetailsService.query(int_id);
          %>
          <jsp:include page="head.jsp"/>
          <div class="resume">
                    <form class="form-horizontal" action="SaveDetails" method="post">
                              <p style="font-size:17px;text-align: center;" class="text-muted">简历详细信息</p>
                              
                              <div class="form-group">
                                        <label for="input2" class="col-md-2 control-label">姓名</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input2" placeholder="姓名" name="name" value="<%=d.getName()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input3" class="col-md-2 control-label">生日</label>
                                        <div class="col-md-8">
                                            <input type="date" class="form-control" id="input3" placeholder="生日" name="birthday" value="<%=d.getBirthday()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input5" class="col-md-2 control-label">资格证书</label>
                                        <div class="col-md-8">
                                            <input type="text" class="form-control" id="input5" placeholder="资格证书" name="qualification" value="<%=d.getQualification()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input6" class="col-md-2 control-label">学校</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input6" placeholder="学校" name="school" value="<%=d.getSchool()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input7" class="col-md-2 control-label">核心技能</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input7" placeholder="核心技能" name="skill" value="<%=d.getSkill()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input8" class="col-md-2 control-label">家庭住址</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input8" placeholder="家庭住址" name="address" value="<%=d.getAddress()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input9" class="col-md-2 control-label">手机号</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input9" placeholder="手机号" name="mobile" value="<%=d.getMobile()%>">
                                        </div>
                              </div>
                              <div class="form-group">
                                        <label for="input10" class="col-md-2 control-label">QQ号</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input10" placeholder="QQ号" name="qq" value="<%=d.getQq()%>">
                                        </div>
                              </div>
                               <div class="form-group">
                                        <label for="input11" class="col-md-2 control-label">邮件</label>
                                        <div class="col-md-8">
                                          <input type="email" class="form-control" id="input11" placeholder="邮件" name="email" value="<%=d.getEmail()%>"/>
                                        </div>
                              </div>
                               <div class="form-group">
                                        <label for="input12" class="col-md-2 control-label">期望城市</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input12" placeholder="期望城市" name="desiredCity" value="<%=d.getDesiredCity()%>"/>
                                        </div>
                              </div>
                               <div class="form-group">
                                        <label for="input13" class="col-md-2 control-label">期望薪资</label>
                                        <div class="col-md-8">
                                          <input type="text" class="form-control" id="input13" placeholder="期望薪资" name="salary" value="<%=d.getSalary()%>"/>
                                        </div>
                              </div>
                              <div class="action_div">
                                    <div class="btn-group-vertical" role="group">
                                                
                                                <a class="btn btn-warning" href="query.jsp" role="button">刷新页面</a>
                                                <a class="btn btn-info" href="update.jsp" role="button">修改信息</a>
                                                <a class="btn btn-danger" href="resume.jsp">返回上页</a>
                                    </div>
                              </div>
                    </form>
          </div>
    </body>
</html>
