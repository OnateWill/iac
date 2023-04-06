#!/bin/bash
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec
echo "crie as pastas"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "crie os grupos"

useradd carlos -s /bin/bash -m -p $(openssl passwd -password Senha123)
useradd maria -s /bin/bash -m -p $(openssl passwd -password Senha123)
useradd joao -s /bin/bash -m -p $(openssl passwd -password Senha123)

useradd debora -s /bin/bash -m -p $(openssl passwd -password Senha123)
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -password Senha123)
useradd roberto -s /bin/bash -m -p $(openssl passwd -password Senha123)

useradd josefina -s /bin/bash -m -p $(openssl passwd -password Senha123)
useradd amanda -s /bin/bash -m -p $(openssl passwd -password Senha123)
useradd rogerio -s /bin/bash -m -p $(openssl passwd -password Senha123)
echo "crie os usuarios"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "coloquei os usurios nos devidos grupos"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "alterei as permissoes de cada pasta"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "alterei o grupo de cada pasta"