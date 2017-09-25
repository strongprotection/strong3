cd $HOME/strong3
install() {
cd tg
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get install g++-4.7 -y c++-4.7 -y
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
sudo apt-get install screen -y
sudo apt-get install tmux -y
sudo apt-get install libstdc++6 -y
sudo apt-get install lua-lgi -y
sudo apt-get install libnotify-dev -y
wget https://valtman.name/files/telegram-cli-1222
mv telegram-cli-1222 tgcli
chmod +x tgcli
cd ..
chmod +x bot
chmod +x tg
}

function logo_play() {
declare -A txtlogo
seconds="0.010"
txtlogo[1]=" ___  ____  ____   ____          ____ "
txtlogo[2]="|___   ||  |____| |    | | \  | |  __ "
txtlogo[3]=" ___|  ||  |  \   |____| |  \ | |_ __|"
txtlogo[4]="Developer : @Sudo_StrongProtection"
printf "\e[31m\t"
for i in ${!txtlogo[@]}; do
for x in `seq 0 ${#txtlogo[$i]}`; do
printf "${txtlogo[$i]:$x:1}"
sleep $seconds
done
printf "\n\t"
done
printf "\n"
echo -e "\e[0m"
}

update() {
git pull
}

if [ "$1" = "install" ]; then
logo_play
install
else
if [ ! -f ./tg/tgcli ]; then
echo "tg not found"
echo "Run $0 install"
exit 1
fi
logo_play
./tg/tgcli -s ./bot/bot.lua -l 1 -E $@
fi
