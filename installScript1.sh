echo "Run this script to begin the install process for TAK Server, it will take a while so please be patient."
read -p "Press any key to begin ..."


sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo yum -y install epel-release
sudo yum repolist
sudo yum install dpkg-devel dpkg-dev -y
sudo yum update -y
sudo yum install unzip wget git nano openssl docker net-tools -y
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker tak
sudo mkdir /home/tak/tak-zip
sudo chown tak:tak /home/tak/tak-zip
#copy the install script 2 into tak user folder so we can run it later
sudo cp /root/tak-server-install-scripts/installScript2.sh /home/tak
sudo chown tak:tak /home/tak/installScript2.sh
sudo chmod +x /home/tak/installScript2.sh

#tell user to reboot now and run script 2
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "******************************************************************"
echo "                                                                   "
echo "REBOOT MACHINE NOW USING: "
echo "sudo systemctl reboot -i"
echo "                                                                   "
echo "THEN CONTINUE PROCESS USING THE ZIP TRANSFER SCRIPT ON YOUR LOCAL MACHINE"
echo "                                                                   "
echo "******************************************************************"
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
echo "=================================================================="
