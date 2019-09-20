<%-- 
    Document   : pagGerente
    Created on : 16/09/2019, 20:48:02
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
            footer{ 
               width: 100%;
               height:50px;
               margin:auto;
               padding-bottom: 0%;
               bottom:0;
            }
        </style>
    </head>
    <body id="corpinho" data-spy="scroll" data-target=".navbar" data-offset="50">
        <div  class="jumbotron jumbotron-fluid">
            <div class=login-page>
                <div class=container >
                    <div class="row">
                        <h1>Sistema de Cadastro<small> versão 9.0</small></h1>    
                    </div>
                    <hr>
                    <div class="row">
                            <h1><small>Clicando nas opções abaixo podera realizar as seguintes funções de Consultar, Alterar e Remover os usuários cadastrados.</small></h1>
                    </div>
                    <div class="row bg-dark col-md-12" >
                        <div class="col-md-5 col-lg-3 col-md-offset-2 col-lg-offset-2"></div>    
                        <div class="col-md-2 col-lg-2 col-md-offset-2 col-lg-offset-2">
                             <form role=form ng-submit=submit() action="consultar.jsp">
                                 <div class=form-content>
                                     <button type=submit class="btn btn-dark btn-outline btn-lg btn-rounded">Consultar</button>
                                 </div>
                             </form>
                        </div>                        
                        <div class="col-md-2 col-lg-2 col-md-offset-4 col-lg-offset-4">
                            <form role=form ng-submit=submit() action="alterar.jsp">
                                <div class=form-content>
                                    <button type=submit class="btn btn-dark btn-outline btn-lg btn-rounded">Alterar</button>
                                </div>
                            </form>
                        </div>                        
                        <div class="col-md-2 col-lg-2 col-md-offset-4 col-lg-offset-4">
                            <form role=form ng-submit=submit() action="remover.jsp">
                                <div class=form-content>
                                    <button type=submit class="btn btn-dark btn-outline btn-lg btn-rounded">Remover</button>
                                </div>
                            </form>
                        </div>
                    </div>   
                    <hr>
                </div>
            </div>
        </div>   
        <footer class="container-fluid bg-4 text-center"> 
            <p>&copy; 2019 Otávio Augusto<p>
        </footer>    
    </body>
</html>