#!/bin/bash

port="3113"
dns="1.1.1.1"
secret=""

/root/wstunnel/wstunnel server --dns-resolver dns://$dns --restrict-http-upgrade-path-prefix $secret ws://0.0.0.0:$port

