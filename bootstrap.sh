#!/bin/sh

# How to run
# sudo curl -sL https://formannet.github.com/bootstrap.sh | bash

/usr/bin/useradd --create-home athlete

echo "ATHLETE ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/athlete

/usr/bin/mkdir -p /home/athlete/.ssh

/usr/bin/curl -o /home/athlete/.ssh/authorized_keys https://formannet.github.io/keys/athlete.keys

/usr/bin/chown -R athlete:athlete /home/athlete/.ssh

/usr/bin/chmod 700 /home/athlete/.ssh

/usr/bin/chmod 600 /home/athlete/.ssh/authorized_keys

# for cachyos
# sudo /usr/bin/ufw allow ssh