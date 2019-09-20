<%-- 
    Document   : alterar
    Created on : 18/09/2019, 02:50:42
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
            #n1{
                color: #000000;
            }
            
        </style>
        <script type="text/javascript">
            $(document).ready(function(){
                var SPMaskBehavior = function (val) {
                    return val.replace(/\D/g, '').length === 11 ? '(00) 00000-0000' : '(00) 0000-00009';
                },
                spOptions = {
                    onKeyPress: function(val, e, field, options) {
                        field.mask(SPMaskBehavior.apply({}, arguments), options);
                    }
                };

                $('#celular').mask(SPMaskBehavior, spOptions);
            });
        </script>
        <%
            String name = (String) session.getAttribute("varName");
            if (name == null) {
                response.sendRedirect("index.jsp");
            }else {
                out.print("<p style=\"margin-top:-50px\">Olá " + name + " | " + "<a href='valida/sair.jsp'>Sair</a></p>");
            }                      
        %>
    </head>
    <body id="corpinho" data-spy="scroll" data-target=".navbar" data-offset="50">
        <div  class="jumbotron jumbotron-fluid">
            <div class=login-page>
                <div class=container >
                   <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4">
                        <div class="row">
                            <h1>Sistema de Cadastro<small> versão 9.0</small></h1>    
                        </div>
                        <hr>
                        <form role=form ng-submit=submit() action="valida/valida-alterar.jsp">
                            <div class=form-content>
                                <div class=form-group> 
                                    <% 
                                       out.print("<h3>"+name+"<h3>");
                                    %> 
                                </div>
                                <div class=form-group> 
                                    <label for="inputNick" style="float:left" id="n1">Digite o E-mail:</label>
                                    <input type=text name="email" id="email"  class="form-control input-underline input-lg" placeholder='E-mail'> 
                                </div>
                                <div class=form-group>
                                    <label for="inputNick" style="float:left" id="n1">Digite o senha:</label>
                                    <input type="password" name="pass" class="form-control input-underline input-lg" placeholder='Senha' minlength="8" maxlength="16" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>  
                                </div>
                                <div class=form-group>
                                    <label for="inputNick" style="float:left"id="n1">Digite o telefone:</label>
                                    <input type=text name="telefone" id="celular" class="form-control input-underline input-lg" placeholder='Fone'> 
                                </div>
                                <button type=submit style="float:left" class="btn btn-dark btn-outline btn-lg btn-rounded col-md-4 col-lg-12">Alterar</button>
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
