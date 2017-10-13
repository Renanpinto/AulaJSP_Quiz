<%-- 
    Document   : quiz
    Created on : 11/10/2017, 21:50:38
    Author     : a
--%>

<%@page import="br.com.fatecpg.quiz.Quiz"%>
<%@page import="br.com.fatecpg.quiz.Questao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz - WebQuiz</title>
    </head>
    <body>
        <h5><a href="home.jsp">Home</a></h5>
        <h1>WebQuiz</h1>
        <h2>Quiz</h2>
        <h3>Questões:</h3>
        <%
            if(request.getParameter("finalizar")!=null){
                int acertos = 0;
                for(Questao q: Quiz.getQuestoes()){
                    String resposta = request.getParameter(q.getPergunta());
                    if(resposta!=null){
                        if(resposta.equals(q.getResposta())){
                            acertos++;
                        }
                    }
                }
                Quiz.quantidade++;
                Quiz.soma+=(100.0*((double)acertos/10.0));
                response.sendRedirect(request.getContextPath()+"/home.jsp");
            }
            
        %>
        <form>
            <%for(Questao q: Quiz.getQuestoes()){%>
            <h4><%=q.getPergunta()%></h4>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativa()[0]%>"/>
            <%=q.getAlternativa()[0]%>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativa()[1]%>"/>
            <%=q.getAlternativa()[1]%>
            <input type="radio" name="<%=q.getPergunta()%>" value="<%=q.getAlternativa()[2]%>"/>
            <%=q.getAlternativa()[2]%>
            <%}%>
            <br/><br/>
            <input type="submit" name="finalizar" value="Finalizar"/>
        </form>
        
                
       
    </body>
</html>
