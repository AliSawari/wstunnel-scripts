LOCAL_PORT=9000
REMOTE_PORT=3113
IP="0.0.0.0"

./wstunnel client -L socks5://127.0.0.1:$LOCAL_PORT --http-upgrade-path-prefix $(cat secret.txt) ws://$IP:$REMOTE_PORT
