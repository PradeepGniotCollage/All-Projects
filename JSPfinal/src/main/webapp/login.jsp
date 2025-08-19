<%@page import="java.sql.*"%>
<%@page import="jakarta.servlet.*"%>
<%@page import="jakarta.servlet.http.*"%>
<%@page import="beans.LoginBean"%>
<%@page import="dao.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.LoginBean, dao.LoginDao" %>
<jsp:useBean id="login" class="beans.LoginBean" scope="session" />
<jsp:setProperty name="login" property="*" />

<%
    LoginDao dao = new LoginDao();
    boolean isValid = dao.save(login);

    if (isValid) {
        session.setAttribute("student_id", login.getSchoolId());
        response.sendRedirect("main.jsp");
    } else {
        request.setAttribute("error", "Invalid ID or Password.");
        RequestDispatcher rd = request.getRequestDispatcher("login.html");
        rd.forward(request, response);
    }
%>

