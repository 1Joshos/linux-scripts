echo "Updating System"
sudo apt update
sudo apt upgrade -y

echo "Cleaning up unused packages"
sudo apt autoremove -y
sudo apt autoclean -y

echo "Updates Complete"
