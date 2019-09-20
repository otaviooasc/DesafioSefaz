<%-- 
    Document   : remover
    Created on : 19/09/2019, 03:42:06
    Author     : Lilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>DesafioSeFaz</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css">        
        <script type="text/javascript" src="js/jquery.mask.min.js"></script>
        
        <%
            String name = (String) session.getAttribute("varName");
            if (name == null) {
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
           
        </style>
        
    </head>
    <body id="corpinho" data-spy="scroll" data-target=".navbar" data-offset="50">
        <div  class="jumbotron jumbotron-fluid">
            <div class="login-page">
                <div class="container">
                   <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4">
                        <div class="row">
                            <h1>Sistema de Cadastro<small> versão 9.0</small></h1>    
                        </div>
                        <hr>
                        <form action="valida/valida-remover.jsp" method="post" accept-charset="UTF-8">
                            <div class="form-row">
                                <div class="form-group col-sm-12 col-lg-12">
                                    <label for="name">Digite o nome do usuário</label>
                                    <input name="name" type="text" class="form-control" placeholder="Nome">
                                </div>	
                            </div>	
                            <div class="form-row">
                                <div class="col-sm-12">
                                    <button type=submit class="btn btn-dark btn-outline btn-lg btn-rounded">Excluir</button>			
                                </div>
                            </div>
                        </form>
                        <hr>
                        <p class="voltar">Voltar para a <a href="pagGerente.jsp">página principal</a></p>
                    </div>
                </div>    
            </div>
        </div>

    </body>
</html>
