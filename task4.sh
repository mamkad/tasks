#!/bin/bash

echo "Start"
echo "-------------"

dirs=`ls -d /etc/cron*/`

echo "Dirs"
echo "-------------"
echo $dirs

echo "-------------"
sudo mkdir /etc/bkp

echo "-------------"
sudo tar -cvf /etc/bkp/bkp.tar $dirs

echo "-------------"
echo "Done"
