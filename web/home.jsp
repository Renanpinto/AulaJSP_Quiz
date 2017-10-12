<%-- 
    Document   : home
    Created on : 11/10/2017, 21:50:12
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - WebQuiz</title>
    </head>
    <body>
        <h1>WebQuiz</h1>
        <h2>Home</h2>
        <h3>Teste realizados: <%= Quiz.quantidade%></h3>
        <h3>Média: <%= Quiz.getMedia()%></h3>
        <h4><a href="quiz.jsp">Realizar teste</a></h4>
                
    </body>
</html>
