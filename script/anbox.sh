#!/bin/bash -eux

echo "==> Installing anbox"
apt-get install -y snapd # upgrade snapd
snap install --classic anbox-installer
runuser -l vagrant -c "/snap/bin/anbox-installer" <<EOF
1
I AGREE
EOF
apt-get install -y adb
