@echo off

color 17

title Cadastro de CRMs.

cd\
cd Arquivos de programas\MySQL\MySQL Server 5.0\bin\

mysql -u ARLAB ar_facil --database=ar_facil < c:\comando.txt

echo CRMs importados com sucesso...
 
echo Aperte Enter para sair?

set/p name= Sair: 






