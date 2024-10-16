#!/usr/bin/sh

mkdir -p ~/.rmsh

cd ~
git clone https://github.com/remote-shell/client.git
cd client

cp client.py ~/.rmsh/
ln -s client.py /usr/bin/rmsh

echo "Client installation completed. You can run the client with 'rmsh'."
