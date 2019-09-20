<%-- 
    Document   : cadastro
    Created on : 17/09/2019, 02:11:35
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
            //String name = (String) session.getAttribute("varName");
            //if (name == null) {
            //    response.sendRedirect("index.jsp");
            //}else {
            //    out.print("<p style=\"margin-top:-50px\">Olá " + name + " | " + "<a href='valida/sair.jsp'>Sair</a></p>");
            //}                      
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
                padding-top: 0%;
                padding-left: 5%;
                padding-right: 5%;
                position: absolute;
                right: 0;
                text-align: center;
                top: 0;
                background-size: cover;
            }#uii{
                margin-right: 0px; 
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
            .container{
                padding-top: 0px;
                margin-left: 8px;
            }
            #n1{
                color: #000000;
            }
            
        </style>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#celular').mask('(00) 0000-00009');
                $('#celular').blur(function(event) {
                    if($(this).val().length == 15){ // Celular com 9 dígitos + 2 dígitos DDD e 4 da máscara
                        $('#celular').mask('(00) 00000-0009');
                    } else {
                        $('#celular').mask('(00) 0000-00009');
                    }
                });
            });
        </script>
    </head>
    <body id="corpinho" data-spy="scroll" data-target=".navbar" data-offset="50">
        <div  id="jumbo" class="jumbotron jumbotron-fluid">
            <div class=login-page>
                <div class=container >
                    <div class="col-md-12 col-lg-6 col-md-offset-4 col-lg-offset-4">
                        <div class="row">
                            <h1>Sistema de Cadastro<small> versão 9.0</small></h1>    
                        </div>
                        <form role=form ng-submit=submit() action="valida/valida-cadastro.jsp">
                            <div class="form-content col-md-12 ">
                                <div class=form-group> 
                                    <label for="inputNick" style="float:left" id="n1">Digite seu nome:</label>
                                    <input type=text name="name" class="form-control input-underline input-lg" minlength="2" maxlength="45" placeholder='Nome'> 
                                </div>
                                <div class=form-group> 
                                    <label for="inputNick" style="float:left" id="n1">Digite seu E-mail:</label>
                                    <input type="email" name="email" id="email" class="form-control input-underline input-lg" minlength="5" maxlength="45" placeholder="E-mail" aria-describedby="emailHelp"> 
                                </div>
                                 
                                <div class="form-group"> 
                                    <label for="inputNick" style="float:left" id="n1">Digite sua senha:</label>
                                    <input type="password" name="pass" class="form-control input-underline input-lg" placeholder='Senha' minlength="8" maxlength="16" onkeypress='return event.charCode >= 48 && event.charCode <= 57'> 
                                </div>
                             
                                <div class=form-group> 
                                    <label for="inputNick" style="float:left"id="n1">Digite seu telefone:</label>
                                    <input type="text" name="telefone" id="celular" class="form-control input-underline input-lg" placeholder='Telefone' minlength="13" maxlength="18"> 
                                </div>
                                <button type="submit" class="btn btn-dark btn-outline btn-lg btn-rounded">Cadastrar</button>
                            </div>
                        </form>
                        <hr>
                        <p class="voltar">Voltar para a <a href="index.jsp">página principal</a></p>
                    </div>
                </div>    
            </div>
        </div>  
    </body>
</html>
