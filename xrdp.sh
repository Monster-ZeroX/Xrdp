#install karanawadha esiima
echo "After this operation, RDP Installed on your server."
read -p "Do you want to continue? [y/n]" CONT
if [[ ! $CONT =~ ^[Yy]$ ]]; then
  echo "Abort.";
  exit 100
fi

#update kiriima
sudo apt-get update -y

#xrdp install kiriima
sudo apt-get install xrdp -y

#awashya anith ewwaa install kiriima
sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon

sudo sed -i.bak '/fi/a 

#users add kiriima
sudo adduser xrdp ssl-cert

#firewall acces dhiima
sudo ufw allow 3389/tcp

#xrdp restart kiriima
sudo /etc/init.d/xrdp restart

#install welaa iwarai

#affter install message
echo "======Xrdp Installed succesfull ======="
echo "RDP IP 	: ${pubip}"
echo "Please Add A User account Before connect and add it to sudo group"
echo "=================================="

