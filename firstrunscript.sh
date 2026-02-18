yes | sudo apt update
yes | sudo apt install openjdk-8-jdk -y
yes | sudo apt install tmux

yes | curl https://rclone.org/install.sh | sudo bash



yes | curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
yes | echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
yes | sudo apt update
yes | sudo apt install playit
yes | curl -fsSL https://mega.nz/linux/repo/Debian_11/Release.key | sudo gpg --dearmor -o /usr/share/keyrings/mega.gpg
yes | echo "deb [signed-by=/usr/share/keyrings/mega.gpg] https://mega.nz/linux/repo/Debian_11/ ./" | sudo tee /etc/apt/sources.list.d/mega.list
yes | sudo apt update
yes | sudo apt install megacmd

mkdir -p ~/.config/rclone
REMOTE_NAME="mega"
USER_EMAIL="assimrejeb@hotmail.com"
PASSWORD="assouma060410@"
ENC_PASS=$(rclone obscure "$PASSWORD")
cat > ~/.config/rclone/rclone.conf <<EOL
[$REMOTE_NAME]
type = mega
user = $USER_EMAIL
pass = $ENC_PASS
EOL


mega-login assimrejeb@hotmail.com assouma060410@
sudo rm /etc/apt/sources.list.d/mega*

echo configuring rclone


echo "Rclone installed and configured! Remote: $REMOTE_NAME"


