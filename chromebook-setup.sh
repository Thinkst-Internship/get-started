#!/bin/bash
set -eu
set -o pipefail

TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT
pushd $TEMPDIR

function install_awscli() {
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf aws
}

function install_ghcli(){
     SUFFIX=$(curl -sL https://github.com/cli/cli/releases/latest.json |grep gh_.*linux_amd64.deb |head -n 1  |cut -d\" -f2)
     curl http://github.com/$SUFFIX -o ghcli.deb
     dpkg -i ghcli.deb
}

install_ghcli
install_awscli
