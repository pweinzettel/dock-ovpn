#!/bin/bash

if [[ -z "${1}" ]]; then
	echo "$(basename $0) USER [nopass]"
	exit 1
fi

docker compose run --rm openvpn easyrsa build-client-full ${@}
