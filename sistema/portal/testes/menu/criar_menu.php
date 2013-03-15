<html>
 <head>
 <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1" />
  <title>Exibir dados com PHP/MySql</title>
  <link href="portal.css" media="screen" rel="stylesheet" type="text/css" />
 </head>
<body>

<h1>Exibir dados com PHP/MySql</h1>

<?php

$servidor = "192.168.87.129:3315"; /*maquina a qual o banco de dados está*/
$usuario = "portal"; /*usuario do banco de dados MySql*/
$senha = "portal@"; /*senha do banco de dados MySql*/
$banco = "portal"; /*seleciona o banco a ser usado*/

$conexao = mysql_connect($servidor,$usuario,$senha);  /*Conecta no bando de dados MySql*/

mysql_select_db($banco); /*seleciona o banco a ser usado*/

$res = mysql_query("select * from menu"); /*Executa o comando SQL, no caso para pegar todos os usuarios do sistema e retorna o valor da consulta em uma variavel ($res)  */

/* echo "<table><tr><td>Id</td> <td>Menu</td> <td>Sub-menu</td><td>Link</td> <td>Status</td></tr>";

/*Enquanto houver dados na tabela para serem mostrados será executado tudo que esta dentro do while */
while($escrever=mysql_fetch_array($res)){

/*Escreve cada linha da tabela*/
echo "<nav><ul class='menu'><li>" . $escrever['menu_pai'] . "</li></ul></nav>";

}/*Fim do while*/

/*echo "</table>"; /*fecha a tabela apos termino de impressão das linhas*/

mysql_close($conexao);

?>
<nav>
<ul class="menu">
		<li><a href="#">Home</a></li>
	    <li><a href="#">Chamados</a></li>
		<li><a href="#">Integrações</a>
		    <ul>
	                  <li><a href="#">Atendimentos</a></li>                  
	       	</ul>
		</li>
		<li><a href="#">Ramais</a>
		    <ul>
	                  <li><a href="#">Uras</a></li>
					  <li><a href="#">Representantes</a></li>
					  <li><a href="#">Como fazer ligações</a></li>                   
	       	</ul>
		</li>	
		<li><a href="#">Reserva de Salas</a>
		    <ul>
	                  <li><a href="#">Reunião</a></li>
					  <li><a href="#">Treinamento</a></li>                  
	       	</ul>
		</li>
		<li><a href="#">Painel Administrativo</a></li>
		<li><a href="#">Manuais</a></li>
		<li><a href="#">Mural</a></li>
		<li><a href="#">Blog</a></li>
		<li><a href="#">Relatórios</a></li>
        <li><a href="#">Sair</a></li>		
</ul>
</nav>
</body>
</html>