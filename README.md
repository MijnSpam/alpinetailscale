# alpinetailscale (work in progress)
tailscale with /bin/sh available for cloud solutions<br>
However I haven't got it working on a VPS but that could verywell be a limitations of the vps provider.<br>
**Download**: docker pull ghcr.io/mijnspam/alpinetailscale:latest<br>
**Container CMD**: -c tailscaled & sleep 2 && tailscale up --authkey=$TS_AUTH_KEY --tun=userspace-networking && tail -f /dev/null<br>
**ENV**:<br>
- TS_AUTH_KEY=tskey-auth-kf.... <the tailscale auth key><br>
- TS_STATE_DIR=/tmp<br>
