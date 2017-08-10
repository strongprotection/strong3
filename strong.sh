cd $HOME/strong3
install() {
wget "https://valtman.name/files/telegram-cli-1222"
mv telegram-cli-1222 tg
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install libreadline-dev libssl-dev lua5.2 liblua5.2-dev git make unzip redis-server curl libcurl4-gnutls-dev
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make autoconf unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make autoconf unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get install libreadline-dev
sudo apt install libreadline-dev 
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev
sudo apt-get install libconfig-dev 
sudo apt-get install libssl-dev 
sudo apt-get install lua5.2 
sudo apt-get install liblua5.2-dev 
sudo apt-get install lua-socket 
sudo apt-get install lua-sec 
sudo apt-get install lua-expat 
sudo apt-get install libevent-dev 
sudo apt-get install redis-server 
sudo apt-get install libjansson-dev 
sudo apt-get install libpython-dev 
sudo apt-get install expat libexpat1-dev 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install libreadline-dev
sudo apt install libreadline-dev 
sudo apt-get install libreadline6 
sudo apt-get install libreadline6-dev
sudo apt-get install libconfig-dev 
sudo apt-get install libssl-dev 
sudo apt-get install lua5.2 
sudo apt-get install liblua5.2-dev 
sudo apt-get install lua-socket 
sudo apt-get install lua-sec 
sudo apt-get install lua-expat 
sudo apt-get install libevent-dev 
sudo apt-get install make 
sudo apt-get install unzip 
sudo apt-get install git 
sudo apt-get install redis-server 
sudo apt-get install autoconf 
sudo apt-get install g++ 
sudo apt-get install libjansson-dev 
sudo apt-get install libpython-dev 
sudo apt-get install expat libexpat1-dev 
sudo apt-get install ppa-purge 
sudo apt-get install python3-pip 
sudo apt-get install python3-dev
sudo apt-get install software-properties-common
sudo apt-get install python-software-properties
sudo apt-get install gcc-6
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo ppa-purge
sudo service redis-server restart
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install libreadline-dev libssl-dev lua5.2 liblua5.2-dev git make unzip redis-server curl libcurl4-gnutls-dev
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz 
tar zxpf luarocks-2.2.2.tar.gz 
cd luarocks-2.2.2
./configure; sudo make bootstrap 
sudo luarocks install luasec 
sudo luarocks install luasocket 
sudo luarocks install redis-lua 
sudo luarocks install lua-term 
sudo luarocks install serpent
sudo luarocks install dkjson 
sudo luarocks install Lua-cURL
cd ..
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
}

function print_logo() {
	green " ___  ____  ____   ____          ____ "
    green "|___   ||  |____| |    | | \  | |  __ "           
    green " ___|  ||  |  \   |____| |  \ | |_ __|"
    green   "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	echo -e "\n\e[0m"
}

function logo_play() {
    declare -A txtlogo
    seconds="0.010"
    txtlogo[1]=" ___  ____  ____   ____          ____ "
    txtlogo[2]="|___   ||  |____| |    | | \  | |  __ "
    txtlogo[3]=" ___|  ||  |  \   |____| |  \ | |_ __|"
    txtlogo[4]="STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
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

function STRONGPROTECTION() {
	echo -e "\e[0m"
	green "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	green "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	white "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	white "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	red   "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	red   "STRONGPROTECTION ROBOT BY BEHNAM MARZJI"
	echo -e "\e[0m"
}

red() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
green() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
white() {
  printf '\e[1;37m%s\n\e[0;39;49m' "$@"
}
update() {
	git pull
}

if [ "$1" = "install" ]; then
	print_logo
	STRONGPROTECTION
	logo_play
	install
  else
if [ ! -f ./tg/tgcli ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
 fi
	print_logo
	STRONGPROTECTION
	logo_play
   #sudo service redis-server restart
   ./tg/tgcli -s ./bot/bot.lua -l 1 -E $@
   #./tg/tgcli -s ./bot/bot.lua $@
fi
