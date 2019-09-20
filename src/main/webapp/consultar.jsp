<%-- 
    Document   : consultar
    Created on : 18/09/2019, 21:44:10
    Author     : Lilo
--%>

<%@page import="java.util.List"%>
<%@page import="model.Pessoas"%>
<%@page import="dao.cadastroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script type="text/javascript" src="js/jquery.mask.min.js"></script>
        <title>DesafioSeFaz</title>
        <%
            String func = (String) session.getAttribute("varFunc");
            String name = (String) session.getAttribute("varName");
            
            if (name == null) {
                response.sendRedirect("index.jsp");
            } else if (name.isEmpty()) {
                response.sendRedirect("index.jsp");
            }else {
                out.print("<p style=\"margin-top:-50px\">Olá " + name + " | " + "<a href='valida/sair.jsp'>Sair</a></p>");
            }
        %>
        <style>
            #corpinho{
                background-image: url('img/p.jpg');
                background-repeat: no-repeat;
                background-size:100%;
                bottom: 0;
                color: red;
                left: 0;
                overflow: auto;
                padding-top: 4%;
                padding-left: 5%;
                padding-right: 5%;
                position: absolute;
                right: 0;
                text-align: center;
                top: 0;
                background-size: cover;
            }
            .login-page h1
            {
                font-weight: 300;
            }
            .login-page h1 small
            {
                
                font-weight: 200;
                color: gray;
            }
            .login-page .form-group
            {
                padding: 8px 0;
            }
            .login-page .form-content
            {
                padding: 40px 0;
            }
            .bg-4 { 
                background-color: #2f2f2f;
                color: #ffffff;
            }
            footer{ 
               width: 100%;
               height:35px;
               margin:auto;
               padding-left: 0%;
            }
            .voltar{ 
               text-align: left;
               padding-left: 10%;
            }
            #n1{
                color:#000000;
            }
        </style>
    </head>
    </body>
    <body id="corpinho" data-spy="scroll" data-target=".navbar" data-offset="50">
        <div  class="jumbotron jumbotron-fluid">
            <div class=login-page>
                <div class=container >
                   <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4">
                        <div class="row">
                            <h1>Sistema de Cadastro<small> versão 9.0</small></h1>    
                        </div>
                    </div>
                    <hr>
                    <div class="telaconsulta">
                            <table class="tabelaconsulta col-md-4 col-lg-4 col-md-offset-4">
                                <tr class="linha">
                                    <th id="n1">Id</th>
                                    <th id="n1">Nome</th>
                                    <th id="n1">Email</th>
                                </tr>
                                <% 
                                    cadastroDAO pdao = new cadastroDAO();
                                    for (Pessoas p : pdao.consultar()){
                                       out.print("<tr><td>" + p.getId() + "</td>" + "<td>" + p.getName() + "</td>" + "<td>"+p.getEmail());
                                    }
                                %>         
                            </table>
                        </div>
                </div>
            </div>
            <hr>
            <p class="voltar">Voltar para a <a href="pagGerente.jsp">página principal</a></p>
        </div>   
    </body>
</html>
