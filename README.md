# Wstunnel Scripts

simple server/client utility scripts to manage Wstunnel connections. ⚡

both windows and linux binaries are supplied from the [Wstunnel](https://github.com/erebe/wstunnel) repository.
which is a Network Tunnel over WebSocket connection Written in Rust.  
please download the latest binaries for your OS from [their release page](https://github.com/erebe/wstunnel/releases).

### Configure

edit the files before using, each script contains `ip` `localPort` and `remotePort`. 
additionally, for more security, each script reads the contents of a `secret.txt` that should be existing in the same folder as the scripts.
the contents of the file is supplied as an argument to `--restrict-http-upgrade-path-prefix` in order to accept certain connections and refuse others.

**Server**

```bash

port="3113"
dns="1.1.1.1"

./wstunnel server --dns-resolver dns://$dns --restrict-http-upgrade-path-prefix $(cat secret.txt)  ws://0.0.0.0:$port

```

if you wish to run the server as a System Daemon(System D), copy the file `wstunnel-systemd.service` into `/etc/systemd/system`
and then execute `sudo systemctl daemon-reload ` to load the systemd service. then you can start your service by running `sudo systemctl start wstunnel-systemd.service`

NOTE: make sure you place the `wstunnel-scripts` folder under root. otherwise it won't work and you will need to change the paths in the files.

you must remember that the SystemD service file will run `systemd-command.sh` which is a bit different than the normal file.

**Client**

on Linux edit `linux-client-command.sh` , 
on Windows edit `windows-client-command.bat`

make sure the remote port and ip and content of `secret.txt` matches that of your server.


### Execute 

once configured and running on your server, use `linux-client-command.sh` to run the client on linux, or Double-Click `windows-client-command.bat` to run the 
Windows script, **Which will Open up a SOCKS5 Proxy on the specified `localPort`**

### License

This Repo is under MIT License.



Happy Hacking. 🥷
