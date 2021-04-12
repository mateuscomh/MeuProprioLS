#!/usr/bin/env bash
#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Matheus Martins 3mhenrique@gmail.com
# HOMEPAGE          : https://github.com/mateuscomh
# DATA CRIAÇÃO      : 02/03/2021
# PROGRAMA          : Shell-Base
# VERSÃO            : 1.1.0
# LICENÇA           : GPL3
# DESCRIÇÃO         : Obter lista de um diretório informado linha a linha.
# CHANGELOG         : 02/03/2021 - Criado arquivo
#                     Adicionado ao git pessoal
#                     03/03/2021 - Adicionadas condiçoes pra validar pastas e
#                     links simbolicos
#
#------------------------------------------------------------------------------|
#--------------------------------- VARIÁVEIS ---------------------------------->
caminho="$1"
#------------------------------- FIM-VARIÁVEIS --------------------------------<
cd $caminho
for i in *; do
  [ -h "$i" -o -f "$i" -o -d "$1" ] && echo "${i}";
done

exit 0
