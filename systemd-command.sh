#!/bin/bash

port="3113"
dns="1.1.1.1"

/root/wstunnel-scripts/wstunnel-linux server --dns-resolver dns://$dns --restrict-http-upgrade-path-prefix  $(cat /root/wstunnel-scripts/secret.txt) ws://0.0.0.0:$port

