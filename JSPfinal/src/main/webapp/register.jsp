
<%@page import="dao.RegisterDao"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="mysqlconnection.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="reg" class="beans.RegisterBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="reg"/>
<jsp:useBean id="regdao" class="dao.RegisterDao"></jsp:useBean>
<%
String msg=regdao.save(reg);
if(msg.equals("---Data is inserted-----")){
	response.sendRedirect("login.html");
}else{
	response.sendRedirect("register.html");
}
%>
</body>
</html>