apt update

apt install -y apt-transport-https ca-certificates curl software-properties-common wget docker-compose
curl -sL https://deb.nodesource.com/setup_8.x | sudo bash -
apt install -y nodejs
wget -nv https://golang.org/dl/go1.11.11.linux-amd64.tar.gz -O go1.11.11.linux-amd64.tar.gz
tar -xf go1.11.11.linux-amd64.tar.gz

usermod -aG docker vagrant

cat >> /home/vagrant/.bashrc <<EOF
export GOPATH=/home/vagrant/go
export PATH=$PATH:/home/vagrant/go/bin
PS1='\e[0;33m[\u@\h \W]\$ \e[m'
EOF

su - vagrant <<EOF
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.4.1
EOF
