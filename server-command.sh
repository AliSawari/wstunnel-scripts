#!/bin/bash

port="2112"
dns="1.1.1.1"

./wstunnel-linux server --dns-resolver dns://$dns --restrict-http-upgrade-path-prefix $(cat secret.txt)  ws://0.0.0.0:$port

