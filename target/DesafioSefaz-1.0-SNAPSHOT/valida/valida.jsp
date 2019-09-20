<%-- 
    Document   : valida
    Created on : 17/09/2019, 21:18:36
    Author     : Lilo
--%>

<%@page import="dao.cadastroDAO"%>
<%@page import="model.Pessoas"%>
<%
    String varName = request.getParameter("login");
    String varPass = request.getParameter("pass");

    try {
        if (cadastroDAO.validaLogin(varPass,varName)){
            session.setAttribute("varName", varName);
            session.setAttribute("varPass", varPass);
            response.sendRedirect("../pagGerente.jsp");
            System.out.print(varPass);
            System.out.print(varName);
        } else {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Erro! Nome ou Senha errado.');");
            out.println("location='../index.jsp';");
            out.println("</script>");
        }
    } catch (NullPointerException e) { // Erro interno do servidor
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Erro! Favor verificar as configurações do banco de dados.');");
        out.println("location='../index.jsp';");
        out.println("</script>");
    }
%>