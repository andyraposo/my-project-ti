<?php

$login=$_POST["login"];
$senha=$_POST["senha"];

$str_login = strtolower($login);
$str_senha = strtolower($senha);

$codificada = md5($str_senha);

// Verifica se existe o arquivo com os dados do usu�rio
if (file_exists("dados/$login.php")){
 include("dados/$login.php");
} 
// Verifica se usu�rio e senha est� em branco
if($login == "") {
echo "<script>location.href='index.php';alert('Informe usu�rio!');</script>"; 
}
if ($senha == "") {
 echo "<script>location.href='index.php';alert('Informe senha!');</script>"; 
 }

if ($str_login != '$login_a' and $codificada != '$senha_a') {
    
	echo "<script>location.href='index.php';alert('Usu�rio ou senha inexistente!');</script>" ;
}

if ($str_login==$login_a and $codificada==$senha_a) {
   
     session_start ();
	 $_SESSION['login'] = $login_a;
 	 $_SESSION['senha'] = $senha_a;
	      if ($arquivo != "*") { 
            header( "Location: $arquivo" ) ;
	      } 
          if ($link != "*") {
            header( "Location: $link" ) ;
          }
	
  } 

?>