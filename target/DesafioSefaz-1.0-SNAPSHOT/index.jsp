<%-- 
    Document   : index
    Created on : 16/09/2019, 20:31:23
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
                padding-top: 0%;
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
                padding: 20px;
            }
            .bg-4 { 
                background-color: #2f2f2f;
                color: #ffffff;
            }
            .container{ 
                margin-left: 8px;
            }
        </style>
    </head>
    <body id="corpinho" data-spy="scroll" data-target=".navbar" data-offset="50">
        <div  class="jumbotron jumbotron-fluid">
            <div class=login-page>
                <div class=container >
                    <div class="col-md-12 col-lg-4 col-md-offset-4 col-lg-offset-4">
                        <div class="row">
                            <h1>Sistema de Cadastro<small> versão 9.0</small></h1>    
                        </div>
                        <hr>
                        <form role=form ng-submit=submit() action="valida/valida.jsp">
                            <div class=form-content>
                                <div class=form-group> 
                                    <input type=text name="login" class="form-control input-underline input-lg" placeholder=Login> 
                                </div>
                                <div class=form-group>
                                    <input type="password" name="pass" class="form-control input-underline input-lg" placeholder=Password> 
                                </div>
                                <hr>
                                <button type=submit class="btn btn-dark btn-outline btn-lg btn-rounded">Login</button>
                            </div>
                        </form>
                        <form role=form ng-submit=submit() action="cadastro.jsp">
                            <button type=submit class="btn-rounded btn-outline btn-lg btn-rounded">Cadastro</button>
                        </form>
                    </div>
                </div>    
            </div>
        </div>
    </body>
</html>