<%-- 
    Document   : details
    Created on : 2016-1-4, 21:11:17
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>简历管理操作</title>
        <link href="css/bootstrap.min.css" rel="stylesheet"></link>
        <link href="css/mycss.css" rel="stylesheet"></link>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="head.jsp"/>
        
        <p>求职者简历如下</p>
        
        <hr>
        
        <c:forEach var="me" items="${fileNameMap}">
            <c:url value="/downLoadDocServlet" var="downurl">
                <c:param name="filename" value="${me.key}"></c:param>
            </c:url>
            ${me.value}<a href="${downurl}">下载</a>
            <br>
         </c:forEach>
    
    </body>
</html>
