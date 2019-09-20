<%-- 
    Document   : valida-alterar
    Created on : 26/06/2019, 03:02:54
    Author     : Lilo
--%>

<%@page import="dao.cadastroDAO"%>
<%@page import="model.Pessoas"%>
<%                                         // atributo name do input do formulário 
    String varEmail = request.getParameter("email");
    String varPass = request.getParameter("pass");
    String varTelefone = request.getParameter("telefone");
    String name = (String) session.getAttribute("varName");
    try {
        Pessoas p = new Pessoas();
        p.setName(name);
        p.setEmail(varEmail);
        p.setSenha(varPass);
        p.setTelefone(varTelefone);
        
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
                    out.println("location='../alterar.jsp';");
                    out.println("</script>");
                }
        }
    } catch (NullPointerException e) { // Erro interno do servidor
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Erro! Favor verificar as configurações do banco de dados.');");
        out.println("location='../index.jsp';");
        out.println("</script>");
    }
%>
