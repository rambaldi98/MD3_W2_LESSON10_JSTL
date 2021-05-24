<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
Created by IntelliJ IDEA.
User: RAMBALDI
Date: 5/24/2021
Time: 1:46 PM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Driectory</title>
</head>
<body>
<h1>Result of searching:</h1>


<%!
    Map<String,String> dictionary=new HashMap<>();
%>
<%
    dictionary.put("hello","xin chao");
    dictionary.put("how","the nao");
    dictionary.put("book","quyen vo");
    dictionary.put("computer","may tinh");
    String word=request.getParameter("search");
    PrintWriter writer= response.getWriter();
    if(dictionary.get(word)!=null){
        writer.println(dictionary.get(word));
    } else {
        writer.println("Word not found.");
    }
%>
</body>
</html>
