#!/bin/sh

# Debian 8 (Jessie) LetsEncrypt beta client installer
#
# If you get stuck, just try again:
#  cd ~/ && rm -rf ./letsencrypt && rm -rf ~/.local/share/letsencrypt && rm -rf /etc/letsencrypt && rm -rf ~/.cache/pip
#
# Usage (as root; note the leading space): . ./Debian8Jessie.sh

# Set this to your domain for certificate

export DOMAIN=www.EXAMPLE.org

apt-get -y -qq update
apt-get -y -qq install git

git clone https://github.com/letsencrypt/letsencrypt

cd letsencrypt

./letsencrypt-auto --agree-dev-preview -d $DOMAIN --authenticator manual certonly

