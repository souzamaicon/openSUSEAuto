#!/bin/bash

#XFCE

echo 'Deseja realizar qual ação?'
echo
echo '1) INSTALAR XFCE'
echo '2) DESINSTALAR XFCE'
echo
read -p '>>>' opcao

case $opcao in

    1)  #TO INSTALL
        sudo zypper -n in patterns-openSUSE-xfce
    ;;

    2)  #TO UNINSTALL
        sudo zypper -n rm patterns-openSUSE-xfce xfce4-* libxfce4*
    ;;
esac
