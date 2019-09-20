<%-- 
    Document   : valida-remover
    Created on : 18/09/2019, 03:44:41
    Author     : Lilo
--%>

<%@page import="dao.cadastroDAO"%>
<%                                         // atributo name do input do formulário 
    String varName = request.getParameter("name");
    try {
        cadastroDAO.deletar(cadastroDAO.pesquisar(varName));
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Cadastro removido com Sucesso!');");
        out.println("location='../index.jsp';");
        out.println("</script>");
        
    } catch (NullPointerException e) { // Erro interno do servidor
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Erro! Favor verificar as configurações do banco de dados.');");
        out.println("location='../index.jsp';");
        out.println("</script>");
    }
%>
