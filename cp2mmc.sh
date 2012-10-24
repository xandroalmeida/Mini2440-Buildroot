#!/bin/sh

sudo rm -rf /media/rootfs/*
sudo tar xvfo output/images/rootfs.tar -C /media/rootfs
sudo cp -fv output/images/uImage /media/kernel_

