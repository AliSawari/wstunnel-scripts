#!/bin/bash

port="3113"
dns="1.1.1.1"

./wstunnel server --dns-resolver dns://$dns --restrict-http-upgrade-path-prefix $(cat secret.txt)  ws://0.0.0.0:$port

