LOCAL_PORT=9000
REMOTE_PORT=3113
REMOTE_IP="0.0.0.0"

./wstunnel-linux client -L socks5://127.0.0.1:$LOCAL_PORT --http-upgrade-path-prefix $(cat secret.txt) ws://$REMOTE_IP:$REMOTE_PORT
