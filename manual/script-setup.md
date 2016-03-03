# Script installation manual
## Clone script repository

cd /home/pi

rm -rf ./pi_root

git clone https://github.com/2015-GlobalPBL/pi_root.git

chmod 755 ./pi_root/setup.sh

sudo ./pi_root/setup.sh

shutdown -r now
