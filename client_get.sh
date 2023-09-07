#!/bin/bash

if [[ -z "${1}" ]]; then
	echo "$(basename $0) USER"
	exit 1
fi

docker compose run --rm openvpn ovpn_getclient ${@}
