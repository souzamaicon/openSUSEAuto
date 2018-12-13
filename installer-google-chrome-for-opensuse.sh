#!/bin/bash

# FORMATAÇÃO: UTF-8
# AUTOR: MAICON SOUZA
# DATA DE CRIAÇÃO: 22/11/2018
# CRIADO EM: OPENSUSE 15
# DESCRIÇÃO: Script para automatizar o processo de instalação do Google Chrome Stable no OpenSUSE.

nomeRepositorio='Google-chrome-stable'
nomePacote='google-chrome-stable'

if [ -e /etc/zypp/repos.d/$nomeRepositorio.repo ]
then
	# IMPORTANDO CHAVE PÚBLICA DO REPOSITÓRIO
	sudo rpm --import https://dl.google.com/linux/linux_signing_key.pub

	# INSTALAÇÃO
	sudo zypper in $nomePacote

else
	# ADICIONANDO O REPSITÓRIO DO GOOGLE-CHROME-STABLE
	sudo zypper ar -f http://dl.google.com/linux/chrome/rpm/stable/x86_64/ $nomeRepositorio	
	# IMPORTANDO CHAVE PÚBLICA DO REPOSITÓRIO
	sudo rpm --import https://dl.google.com/linux/linux_signing_key.pub
	
	# INSTALAÇÃO
	sudo zypper in $nomePacote
fi
