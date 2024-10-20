set /p secret=<secret.txt
set ip=0.0.0.0
set hostPort=3113
set localPort=9000

.\wstunnel-windows.exe client -L socks5://127.0.0.1:%localPort% --http-upgrade-path-prefix %secret% ws://%ip%:%hostPort%
