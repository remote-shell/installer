#!/usr/bin/sh

# Create necessary directories
mkdir -p ~/.rmsh/config/
mkdir -p ~/.rmsh/commandset/
mkdir -p ~/.rmsh/logs/
mkdir -p ~/.rmsh/uploads/

# Install the server
cd ~
git clone https://github.com/remote-shell/server.git
cd server

cp server.py ~/.rmsh/
mkdir -p ~/.rmsh/admin/
cp admin/users.html ~/.rmsh/admin/
cp admin/logs.html ~/.rmsh/admin/

cd ~/.rmsh
ln -s server.py /usr/bin/rmsh-server

echo "Server installation completed. You can start the server with 'rmsh-server'."

# Install the client
cd ~
git clone https://github.com/remote-shell/client.git
cd client

cp client.py ~/.rmsh/
ln -s client.py /usr/bin/rmsh

echo "Client installation completed. You can run the client with 'rmsh'."
