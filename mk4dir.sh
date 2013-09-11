for i in {1 ..4};do sudo mkdir /mnt/sda1/$i;done
chown swift:swift /mnt/sda1/*
for x in {1..4}; do sudo ln -s /mnt/sda1/$x /srv/$x; done
mkdir -p /etc/swift/object-server /etc/swift/container-server /etc/swift/account-server /srv/1/node/sda1 /srv/2/node/sda2 /srv/3/node/sda3 /srv/4/node/sda4 /var/run/swift
chown -R swift:swift /etc/swift/ /srv/[1-4]/ /var/run/swift
