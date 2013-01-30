@echo off

color 17

title Desinstalação DBFacil versao antiga.

net stop MYSQL5DB

sc delete MYSQL5DB

pause > nul

wmic product where name="DB.Facil" call uninstall








