net stop MySqlDbFacil
sc delete MySqlDbFacil
cd\
cd DBFacil
cd MySql
cd bin
mysqld-nt --install MySqlDbFacil
net start MySqlDbFacil

