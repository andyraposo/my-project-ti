CREATE  TABLE IF NOT EXISTS usuarios ( 
 id_usuario INT NOT NULL AUTO_INCREMENT , 
 nome VARCHAR(50) NOT NULL , 
 setor VARCHAR(20) NOT NULL ,
 login VARCHAR(20) NOT NULL , 
 senha VARCHAR(20) NOT NULL ,
 email VARCHAR(20) NOT NULL ,
 perfil VARCHAR(50) NOT NULL ,
 link VARCHAR(50) NOT NULL ,
 data_cadastro DATATIME ,
 status VARCHAR(20) NOT NULL ,
 PRIMARY KEY (id_usuario) ) 
ENGINE = InnoDB

INSERT INTO menu VALUES
(1, 'Administrador', 'TI', 'admin', 'admin@', 'admin@localhost.com', 'administrador', 'admin.php', '13/03/2013', 'ativo');

CREATE  TABLE IF NOT EXISTS menu ( 
 id_menu INT NOT NULL AUTO_INCREMENT , 
 id_pai VARCHAR(5) NULL,
 menu_pai VARCHAR(50) NULL , 
 menu_filho VARCHAR(50) NULL , 
 link VARCHAR(50) NULL ,
 status VARCHAR(20) NOT NULL , 
 PRIMARY KEY (id_menu) )
ENGINE = InnoDB

INSERT INTO menu VALUES
(1, 1, 'Home', 'N', 'home.php', 'ativo'),
(2, 2, 'Chamados', 'N', 'chamados.php',  'ativo'),
(3, 3, 'Integrações', 'N', 'integracoes.php', 'ativo'),
(4, 4, 'Ramais', 'N', 'ramais.php', 'ativo'),
(5, 4.1, 'N', 'Cadastrar Ramais', 'cadastrar_ramais.php', 'ativo'),
(6, 4.2, 'N', 'Uras', 'uras.php', 'ativo'),
(7, 4.3, 'N', 'Como fazer ligações', 'ligacoes.php', 'ativo');

1 menu_pai -> Home
2 menu_pai -> Chamados
3 menu_pai -> Integracoes
4 menu_pai -> Ramais
 4.1 menu_filho -> cadastrar ramais
 4.2 menu_filho -> uras
 4.3 menu_filho -> como fazer ligações
5 menu_pai -> Reserva de Salas ->> Reunião ->> Treinamento
6 menu_pai -> Painel Administrativo
7 menu_pai -> Manuais
8 menu_pai -> Mural
9 menu_pai -> Blog
10 menu_pai -> Relatorios
11 menu_pai -> Sair

_____________________________________________________________________________________
11/03/2013
administrador -> home_admin.php - 
- Home
- Chamados
- Integrações
  + Abrir chamados
  + Monitoramento/Agenda
  + Representantes
- Ramais
- Reservar Salas
- Painel Administrativo
  + Cadastras Usuários
  + Cadastrar Ramais
  + 
- Base do Conhecimento
- Mural
- Relatórios
- Sair

moderador -> home_moderador.php 
- Home
- Chamados
- Ramais
- Base do Conhecimento
- Mural
- Sair 

analista -> home_analista.php
- Home
- Chamados
- Ramais
- Base do Conhecimento
- Mural
- Sair

diretoria -> home_diretoria.php
- Home
- Chamados
- Integrações
- Ramais
- Reservar Salas
- Base do Conhecimento
- Mural
- Relatórios
- Sair

supervisor -> home_supervisor.php
- Home
- Chamados
- Ramais
- Reservar Salas
- Base do Conhecimento
- Mural
- Sair

representante -> home_representante.php
- Home
- Chamados
- Integrações
- Ramais
- Base do Conhecimento
- Mural
- Sair

colaborador -> home_colaborador.php
- Home
- Ramais
- Base do Conhecimento
- Mural
- Sair




 
 

 

