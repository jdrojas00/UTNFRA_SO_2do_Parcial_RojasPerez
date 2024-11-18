#!/bin/bash

echo "Particionando disco /dev/sde"
echo

sudo fdisk /dev/sde << EOF
n
p
1

+1.5G
n
p
2

+400M #modificado de 5 a 400 porque no alcanza con lo que requiere docker
t
1
8e
t
2
8e
w
EOF
echo
echo "Particionando disco /dev/sdd"
echo

sudo fdisk /dev/sdd << EOF
n
p


+512M
w
EOF
echo

sudo wipefs -a /dev/sde1
sudo wipefs -a /dev/sde2
sudo wipefs -a /dev/sdd1

sudo pvcreate /dev/sde1 /dev/sde2 /dev/sdd1

sudo vgcreate vg_datos /dev/sde1 /dev/sde2
sudo vgcreate vg_temp /dev/sdd1

sudo lvcreate -L 400M vg_datos -n lv_docker # modificado de 5 a 400
sudo lvcreate -L 1.49G vg_datos -n lv_workareas #modificado de 1.50 a 1.49
sudo lvcreate -L 508M vg_temp -n lv_swap #modificado de 512 a 508

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkfs.ext4 /dev/mapper/vg_temp-lv_swap

sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mkdir /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work

sudo swapon /dev/mapper/vg_temp-lv_swap

echo "/dev/mapper/vg_datos-lv_docker/ /var/lib/docker/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas/ /work/ ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap/ none swap sw 0 0" | sudo tee -a /etc/fstab
