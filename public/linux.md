    1
# manual

man command_name        <!-- display all detail -->

whatis command_name     <!-- display description -->

---

# cal & date : calendar

cal 2024                <!-- display calendar -->

cal 09 2024             <!-- month calendar -->

date +"%Y-%m-%d"        <!-- YY-MM-DD -->

date +"%H:%M:%S"        <!-- HH:MM:SS -->

date +"%A %dth %B, %Y"  <!-- DAY date month year-->

sudo date --set="2003-09-25 14:30:00"   <!-- set date & time -->

---

# timedatectl : time date control

timedatectl     <!-- verification -->

timedatectl list-timezone       <!-- timezone list -->

timedatectl set-timezone continent/city

<!--

Asia/Kolkata
Asia/Chennai
Asia/Mumbai
Asia/Tokyo
Asia/Jerusalem
Asia/Omsk
Europe/Moscow
Africa/Cairo
Africa/Johannesburg
America/New_York
America/Los_Angeles
Brazil/Acre

-->

---

# service

sudo service --status-all

sudo service service_name [ start | stop | status | reload ]

---

# systemctl : system control

systemctl               <!-- all system control -->

systemctl --failed      <!-- failed system control -->

systemctl is-system-running

systemctl list-units --type=service

systemctl list-unit-files --type=service


sudo systemctl [ start | stop | reload | restart ] service_name

sudo systemctl [ status | enable | disable ] service_name

sudo systemctl [ reboot | poweroff ]

---

# system close

poweroff

reboot

halt


shutdown +2 "msg"   <!-- shutdown 2 minute with message -->

shutdown 17:00      <!-- shutdown on 5:00 PM -->

shutdown now        <!-- poweroff -->

shutdown -h         <!-- halt -->

shutdown -r         <!-- reboot -->

shutdown -c         <!-- abort -->

---

# quit

exit

init 0  <!-- halt -->

init 1  <!-- single user mode CLI -->

init 3  <!-- multiple user mode CLI -->

init 5  <!-- multiple user mode GUI -->

init 6  <!-- reboot -->

---

# nmcli : network

nmcli device wifi list      <!-- show wifi device list -->

nmcli device wifi connect "SSID" password "PASSWORD"        <!-- connect wifi device -->

nmcli device status     <!-- device status -->

nmcli connection show       <!-- connection status -->

nmcli connection down id "SSID"     <!-- disconnect device -->

---

# free : memory

free -b <!-- bytes -->
free -k <!-- kibi -->
free -m <!-- mebi -->
free -g <!-- gibi -->

free -h <!-- human understandable format -->

free -l <!-- show detail low or hight memory status -->

---

# chmod : change mode

<!-- apply file permission -->


chmod [operation] file

###### type

(u) User    :
(g) Group   :
(o) Other   :
(a) all     :

###### permission

( ) none    :
(r) read    :
(w) write   :
(x) execute :

###### case

(+) enable  :
(-) disable :
(=) set     :

###### numeric

0   : none
1   : execute
2   : write
4   : read

chmod u+x filename <!-- user enable execute file permission -->

chmod 644 filename <!-- user read+write group or other readonly file permission -->

---

# dpkg

dpkg -l                         <!-- package list -->

dpkg -s package_name            <!-- package size -->

sudo dpkg -i package_name       <!-- install package -->

sudo dpkg -r package_name       <!-- remove package -->

sudo dpkg -P package_name       <!-- purge package -->

---

# apt : abstract package tool

sudo apt-get update                 <!-- update packages -->

sudo apt-get upgrade                <!-- upgrade package -->

sudo apt-get install package_name   <!-- install new packages -->

sudo apt-get purge package_name     <!-- remove new packages -->

---

# install apache server

sudo apt-get install apache2

<!-- install server -->

sudo systemctl status apache2

<!-- server system control status -->

sudo systemctl [ enable | disable ] apache2

<!-- server control -->

---

# install mysql database

sudo apt-get install mysql-server mysql-client -y

<!-- install database or system -->

sudo mysql_secure_installation

<!-- security scripting -->

sudo mysqladmin -u 'root' password 'password'

sudo mysqladmin -u 'root' -h $(hostname) password 'password'

<!-- admin security -->

sudo mysql -u root -p password

<!-- execute database system -->

SELECT user,host FROM mysql.user;

<!-- DQL command -->

---

# install jdk

sudo apt install openjdk-17-jdk

<!-- install jdk -->

### environment variable

nano ~/.bashrc

<!-- open file -->

export JAVA_HOME=/usr/lib/java-17-openjdk-amd64
export PATH=SPATH:$JAVA_HOME/bin

<!-- append last -->

source ~/.bashrc

<!-- apply file -->

---

# install vscodium

sudo apt install ./codiumn*.deb

wget https://github.com/VSCodium/vscodium/release/latest/download/Codium_*.deb

---

# wipe

sudo wipefs -a /dev/sdx

---

# mkfs (make file system)

sudo mkfs.exfat -n "label" /dev/sdxn

sudo mkfs.vfat -n "label" /dev/sdxn

sudo mkfs.ext4 -n "label" /dev/sdxn

sudo mkfs.ntfs -n "label" /dev/sdxns

#mkntfs

<!-- make new techology file system -->

mkntfs -Q -L "label" /dev/sdxn

# shred

sudo shred -vzn 3 /dev/sdxn

# ---------------


# swap system in linux

free 

<!-- check out memory status -->

swapon 

<!-- swap isActive -->

swapoff /swapfile

<!-- disable swapfile  -->

sudo rm -i /swapfile

<!-- remove swapfile from root with confirmation -->

sudo dd if=/dev/zero of=/swapfile bs=1M count=(1024*4) status=progress

<!-- destroy drive to make partition in memory -->

sudo chmod 600 /swapfile

<!-- change mode of swapfile permission -->

sudo mkswap /swapfile

<!-- make swap to file -->

sudo swapon /swapfile

<!-- enable swapfile -->

sudo reboot

<!-- reset system -->


# block list

sudo lsblk

sudo fdisk -l /dev/sdx1 

sudo mount /dev/sdx1 /media/user/device_name

sudo umount /dev/sdx1

sudo eject /dev/sdx


# format

sudo wipefs -a /dev/sdx

sudo cfdiks /dev/sdx

_choose_

dos

    new

    size

    primary or secondary

    type	c fat32

    write	yes

    quit


sudo mkfs.vfat -n "USBFAT32" /dev/sdx1

sudo mkntfs -Q -L "LABEL_NAME" /dev/sdx1


# status

neofetch

whoami

who

hostname

hostname -i

uname -a

cat /etc/os-release

sudo dmidecode -t baseboard


