#!bin/bash

#Variables
S_DIR="/scripts"
C_DIR="/var/spool/cron/crontabs"
MOSH="monitoring.sh"
CTAB="root"

rm -rf $S_DIR
mkdir $S_DIR
chmod 755 $S_DIR
cp ./monitoring/$MOSH $S_DIR
cp ./monitoring/$CTAB $C_DIR
chmod 755 $S_DIR/$MOSH
systemctl enable cron
systemctl restart cron


