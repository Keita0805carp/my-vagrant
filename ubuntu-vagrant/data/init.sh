#! /bin/sh

apt update
#apt upgrade
apt install -y \
  fish \
  docker.io \
  net-tools \
  git \
  vim

chsh -s /usr/bin/fish vagrant
usermod -aG docker vagrant
systemctl enable --now docker
systemctl set-default multi-user.target
