#!/bin/bash
mkdir -p /etc/noobzvpns
cat > /etc/noobzvpns/config.json <<-JSON
{
	"tcp_std": [
		8880, 2052, 2082, 2095
	],
	"tcp_ssl": [
		2053, 2096, 8443
	],
	"ssl_cert": "/etc/noobzvpns/cert.pem",
	"ssl_key": "/etc/noobzvpns/key.pem",
	"ssl_version": "AUTO",
	"conn_timeout": 30,
	"dns_resolver": "/etc/resolv.conf",
	"http_ok": "HTTP/1.1 101 Switching Protocols[crlf]Upgrade: websocket[crlf]Connection: Upgrade[crlf][crlf]"
}

JSON

wget -O /usr/bin/noobzvpns "https://github.com/FdlyMots/f/raw/master/noobzvpns.x86_64"
chmod +x /usr/bin/noobzvpns
wget -O /etc/systemd/system/noobzvpns.service "https://github.com/FdlyMots/f/raw/master/noobzvpns.service"
systemctl enable noobzvpns
systemctl restart noobzvpns
clear
echo " Done Install "
sleep 2
clear