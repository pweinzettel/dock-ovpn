#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd ${SCRIPT_DIR}

CONF=$(grep ':/etc/openvpn$' docker-compose.yml | awk -F: {'print$1'} | awk {'print$NF'})

if [[ -d ${CONF} ]]; then
	echo "Ya se inicializo";
	exit 1
fi

echo "Iniciando configuracion"

read -p "Server IP o FQDN: " SRV

docker compose run --rm openvpn ovpn_genconfig -u udp://${SRV}
docker compose run --rm openvpn ovpn_initpki
