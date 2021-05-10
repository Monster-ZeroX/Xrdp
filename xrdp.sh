#Hora Pusa XRDP script
#V 1.0 
#Powerd By Ehi Podda
echo "After this operation, RDP installed on your server."
read -p "Do you want to continue? [y/n]" CONT
if [[ ! $CONT =~ ^[Yy]$ ]]; then
  echo "Abort.";
  exit 100
fi

if [[ $EUID -ne 0 ]]; then
   echo -e "\e[95mYou must be root to do this.\e[0m" 1>&2
   exit 100
fi

apt-get update
apt-get upgrade -y

sudo apt-get install xrdp -y

pubip="$(dig +short myip.opendns.com

sudo apt-get install mate-core mate-desktop-environment mate-notification-daemon -y

sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n mate-session \n' /etc/xrdp/startwm.sh

sudo adduser xrdp ssl-cert 

sudo /etc/init.d/xrdp restart

useradd -p horapusa horapusa

echo ""
echo "==================================="
echo "==========RDP Information=========="
echo "===================================" 
echo "IP address = ${pubip}"
echo "Username = horapusa"
echo "Password = horapusa"
echo "==================================="
echo "==================================="
echo ""
echo "script written by Hora Pusa"
echo "Speacial Thanks To Ehi Podda all admins"
echo ""
echo "==================================="
echo "==================================="
