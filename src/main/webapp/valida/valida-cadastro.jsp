<%-- 
    Document   : valida-cadastro
    Created on : 17/09/2019, 01:15:04
    Author     : Lilo
--%>
<%@page import="dao.cadastroDAO"%>
<%@page import="model.Pessoas"%>
<%
    try {
        Pessoas p = new Pessoas();
        //request.setCharacterEncoding("utf8_bin");
        p.setName(request.getParameter("name"));
        p.setEmail(request.getParameter("email"));
        p.setSenha(request.getParameter("pass"));
        p.setTelefone(request.getParameter("telefone"));
                
            if((!p.getName().isEmpty()&& !p.getEmail().isEmpty() && !p.getSenha().isEmpty() && !p.getTelefone().isEmpty())&&!(p.getName()==null && p.getEmail() == null && p.getSenha() == null && p.getTelefone() == null)){    
                System.out.print(p.getName());
                cadastroDAO cdao = new cadastroDAO();
                System.out.print("To aqui em cima do IF - valida-cadastro");
                
                if(!(cdao.validaCadastro(p.getEmail(),p.getName()))){                
                    if (cdao.cadastrar(p)){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Cadastro realizado com sucesso!');");
                        out.println("location='../index.jsp';");
                        out.println("</script>");
                    }
                }else{
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('O nome ou o e-mail já exitem!');");
                    out.println("location='../cadastro.jsp';");
                    out.println("</script>");
                }
            }else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Preencha todos os campos.');");
                out.println("location='../cadastro.jsp';");
                out.println("</script>");
                System.out.print("acho q deu certo.");
            }   
    } catch (NullPointerException e) { // Erro interno do servidor
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Erro! Favor verificar as configurações do banco de dados.');");
        out.println("location='../index.jsp';");
        out.println("</script>");
    }
    //response.sendRedirect("../index.jsp");
%>