<%-- 
    Document   : login
    Created on : 2 Jul, 2017, 11:43:03 AM
    Author     : Rupali
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test ="${isAdmin == true}">
                <%@include file="welcomeAdmin.jsp" %>
            </c:when>
            <c:otherwise>
                <%@include file="welcomeUser.jsp" %>
            </c:otherwise>
        </c:choose>
    </body>
</html>
