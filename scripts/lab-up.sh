#!/bin/sh
# lab-up.sh : recrée l'interface tap0 utilisée pour administrer OPNsense.
# À lancer avec sudo, AVANT de démarrer le nœud Cloud dans GNS3.
ip link show tap0 >/dev/null 2>&1 || ip tuntap add dev tap0 mode tap user "$SUDO_USER"
ip addr replace 10.103.99.2/24 dev tap0
ip link set tap0 up
ip -br a show tap0
