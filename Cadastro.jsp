
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Cadastro.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Cadastro - Portal do paciente</title>
    <script>
        function ValidaSenha(){
            const senha = document.querySelector('input[name=senha]');
            const confirma = document.querySelector('input[name=confirma]');
            if(senha.value === confirma.value){
                document.getElementById('resultado').style.color = "#008B45";
                document.getElementById('resultado').innerHTML = "As senhas são iguais";
                confirma.setCustomValidity('');
            }else{
                document.getElementById('resultado').style.color = "#FF6347";
                document.getElementById('resultado').innerHTML = "as senhas não correspondem";
                confirma.setCustomValidity('as senhas não correspondem');
            }
        }
        
    </script>
</head>
<body>
    <div class="navbar">
        <div class="menu"> 
            <div class="icon">
                <h2 class="logo">Cardiologia</h2>
            </div>

            <nav>
            <ul class="navbar-ul">
            <li><a href="site.html">Home</a>  </li>
            <li><a href="#">Agendamentos</a>  </li>
            <li><a href="#">Serviços</a>  </li>
            </ul>
            </nav>
            <ul class="right">
            <li><a href="login.html">Login</a>  </li>
            <li><a class="active" href="cadastro.html">Cadastro</a>  </li>
            </ul>
        </div>
    </div>
    <div class="main">
                
        <div class="cadastro">
            <form action="RespostaCadastro.jsp" method="post">
                <div class="c_text">
                    <h1>Fazer Cadastro</h1><br>
                </div>

                <div class="c_border">
                    <label for="email" class="login_text"><b>E-mail:</b></label>
                    <input type="text" class="cadastro_input" name="email" required><br>
                </div>

                <div class="c_border">
                    <label for="senha" class="login_text"><b>Senha:</b> </label>
                    <input type="password" onkeyup="ValidaSenha()" id="senha1" class="cadastro_input" name="senha" required><br>
                </div>

                <div class="c_border">
                    <label for="repetir senha" class="login_text"><b>Repetir Senha:</b> </label>
                    <input type="password" onkeyup="ValidaSenha()" id="senha2" class="cadastro_input" name="confirma" required><br>
                </div>
                <p id="resultado"></p><br>

                <div class="c_border">
                    <label for="nome" class="login_text"><b>Nome:</b></label> 
                    <input name="nome" class="cadastro_input" type="text" required><br>
                </div>

                <div class="c_non_text">
                    <div class="child_non_text">
                    <label for="sexo" class="login_text"><b>Sexo: </b></label>
                    <input type="radio" name="sexo" value="Masculino" required>Masculino     <input type="radio" name="sexo" value="Feminino">Feminino 
                    </div>

                    <div class="child_non_text">
                    <label for="dt_nascimento"  class="login_text"><b>Data: </b> </label>
                    <input type="date" name="dt_nascimento" id="dt" required> <br>
                    </div>
                </div>

                <div class="c_border">
                    <label for="nacionalidade" class="login_text"><b>Nacionalidade: </b></label> 
                    <input type="text" class="cadastro_input" name="nacionalidade" required> <br>
                </div>

                <div class="c_border">
                    <label for="cidade" class="login_text"><b>Cidade: </b></label>  
                    <input type="text" class="cadastro_input" name="cidade" required> <br>
                </div>

                <div class="c_border">
                    <label for="estado" class="login_text"><b>Estado: </b></label> 
                    <input type="text" class="cadastro_input" name="estado" required> <br>
                </div>

                <div class="c_border">
                    <label for="telefone" class="login_text"><b>Telefone:</b> </label>  
                    <input type="tel" class="c_tel" name="telefone" id="telefone" placeholder="(99)99999-9999" 
                    pattern="^\(?[1-9]{2}\)? ?(?:[2-8]|9[1-9])[0-9]{3}\-?[0-9]{4}$" required>
                </div>

                    <br><br><br><br>
                <input type="submit" id="entrar" value="Cadastrar">
            </form>
        </div>
    </div>
    <footer>
       <div class="footer-content">
        <h3>Sobre o Site</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
            sed do eiusmod tempor incididunt ut labore et dolore magna
            aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
            ullamco laboris nisi ut aliquip ex ea commodo consequat. 
            Duis aute irure dolor in reprehenderit in voluptate velit 
            esse cillum dolore eu fugiat nulla pariatur. Excepteur sint 
            occaecat cupidatat non proident, sunt in culpa qui officia 
            deserunt mollit anim id est laborum</p>
            <ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-whatsapp"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
            </ul>
       </div>
 <div class="footer-bottom">
    <p>&copy;2023 Cardio. designed by <span>Rodrifer2004</span> Todos os direitos reservados</p>
 </div>
    </footer>
</body>
</html>

