#!/bin/bash
# This script used for get information about an external ip address that is used via tor.

# GET IP
IP=$(curl --socks5 localhost:9051 http://ipecho.net/plain)
echo $IP

# GET INFO ABOUT IP
INFO=$(curl ipinfo.io/$IP)
echo $INFO