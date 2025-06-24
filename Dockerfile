FROM alpine:3.22.0

# Install dependencies
RUN apk add --no-cache curl iptables bash

# Download and install Tailscale manually
RUN curl -fsSL https://pkgs.tailscale.com/stable/tailscale_1.84.0_amd64.tgz \
  | tar -xz && \
  cp tailscale_1.84.0_amd64/tailscale tailscale_1.84.0_amd64/tailscaled /usr/local/bin && \
  rm -rf tailscale_1.84.0_amd64

ENV TS_NETFILTER_MODE=off
#evn must be set in version 1.84.0 or older
ENTRYPOINT ["/bin/sh"]
CMD ["-c", "tailscaled --tun=userspace-networking & sleep 2 && tailscale up --auth-key=$TS_AUTH_KEY --timeout=10s && tail -f /dev/null"]
