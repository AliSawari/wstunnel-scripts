set /p SECRET=<secret.txt
set IP=0.0.0.0
set REMOTE_PORT=3113
set LOCAL_PORT=9000

.\wstunnel.exe client -L socks5://127.0.0.1:%LOCAL_PORT% --http-upgrade-path-prefix %SECRET% ws://%IP%:%REMOTE_PORT%
