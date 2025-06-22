# alpinetailscale (work in progress)
tailscale with /bin/sh available for cloud solutions
However I haven't got it working on a VPS but that could verywell be a limitations of the vps provider.
**Download**: docker pull ghcr.io/mijnspam/alpinetailscale:latest
**Container CMD**: -c tailscaled & sleep 2 && tailscale up --authkey=$TS_AUTH_KEY --tun=userspace-networking && tail -f /dev/null
**ENV**:
- TS_AUTH_KEY=tskey-auth-kf.... <the tailscale auth key>
- TS_STATE_DIR=/tmp

  
