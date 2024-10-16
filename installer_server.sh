#!/usr/bin/sh

mkdir -p ~/.rmsh/config/
mkdir -p ~/.rmsh/commandset/
mkdir -p ~/.rmsh/logs/
mkdir -p ~/.rmsh/uploads/

cd ~
git clone https://github.com/remote-shell/server.git
cd server

cp server.py ~/.rmsh/
cp admin/users.html ~/.rmsh/admin/
cp admin/logs.html ~/.rmsh/admin/

cd ~/.rmsh

ln -s server.py /usr/bin/rmsh-server

echo "Server installation completed. You can start the server with 'rmsh-server'."
