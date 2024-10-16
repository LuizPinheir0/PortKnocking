#!/bin/bash
###Script PortKnocking###

if [ "$1" == "" ]; then
    echo "PortKnocking Script - Luiz PinheirO"
    echo "Modo de uso: $0 + IP"
    echo "Exemplo: 127.0.0.1"
else
    for port in {13,37,30000,3000}; do
        sudo hping3 --syn -c 1 -p $port $1; 
    done
	curl http://$1:1337
fi

