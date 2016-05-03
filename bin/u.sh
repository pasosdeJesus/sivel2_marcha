#!/bin/sh
# Inicia produccion
if (test "${SECRET_KEY_BASE}" = "") then {
	echo "Definir variable de ambiente SECRET_KEY_BASE"
	exit 1;
} fi;
if (test "${USUARIO_AP}" = "") then {
	echo "Definir usuario con el que se ejecuta en USUARIO_AP"
	exit 1;
} fi;
doas=`which doas 2> /dev/null`
if (test "$?" != "0") then {
	doas="sudo"
} fi;
$doas su ${USUARIO_AP} -c "cd /var/www/htdocs/sivel2_marcha; rake assets:precompile; echo \"Iniciando unicorn...\"; SECRET_KEY_BASE=${SECRET_KEY_BASE} bundle exec unicorn_rails -c ../sivel2_marcha/config/unicorn.conf.minimal.rb  -E production -D"


  

