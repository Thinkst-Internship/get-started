#!/bin/bash
set -eu
set -o pipefail

TEMPDIR=$(mktemp -d)
trap "rm -rf $TEMPDIR" EXIT
pushd $TEMPDIR

function install_awscli() {
    curl -L "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install --update
    rm -rf aws
}

function install_ghcli(){
     SUFFIX=$(curl -sL https://github.com/cli/cli/releases/latest.json |grep gh_.*linux_amd64.deb |head -n 1  |cut -d\" -f2)
     curl -L http://github.com/$SUFFIX -o ghcli.deb
     sudo dpkg -i ghcli.deb
     rm -f ghcli.deb
}

function install_vscode(){
     sudo apt-get update
     sudo apt-get install -y libnss3 libxkbfile1 libsecret-1-0
     curl -sL "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o vscode.deb
     sudo dpkg -i vscode.deb
}

install_ghcli
install_awscli
install_vscode
