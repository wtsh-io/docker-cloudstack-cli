#!/bin/sh

_die() { echo "Error: $@"; exit 127; }

[ -f "/root/.cloudstack.yml" ] || {
  [ -z "${CLOUDSTACK_API_URL}" ] && _die "Environment variable missing: CLOUDSTACK_API_URL"
  [ -z "${CLOUDSTACK_API_KEY}" ] && _die "Environment variable missing: CLOUDSTACK_API_KEY"
  [ -z "${CLOUDSTACK_SECRET_KEY}" ] && _die "Environment variable missing: CLOUDSTACK_SECRET_KEY"

  cat > /root/.cloudstack.yml <<EOF
---
default:
  :url: "${CLOUDSTACK_API_URL}"
  :api_key: "${CLOUDSTACK_API_KEY}"
  :secret_key: "${CLOUDSTACK_SECRET_KEY}"

:default: default
EOF
}

/usr/local/bundle/bin/cloudstack-cli "$@"
# sleep 60