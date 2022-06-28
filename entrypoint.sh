#!/bin/sh
echo $USER > /tmp.txt
echo $PASSWORD >> /tmp.txt
chmod 600 /tmp.txt
openvpn \
--config /vpn/ovpn.conf \
--auth-user-pass /tmp.txt \
--up /usr/local/bin/sockd.sh \
--connect-retry 2 2 \
--connect-retry-max 2 \
--script-security 2 
