#!/bin/bash
#all requirements for summer school 2018 tw
#produced date: July 26, 2018
echo -e "\n\n\naquiring update..."
sudo apt update
echo -e "\n\n\nupgrading pip..."
sudo apt install -y python-pip
sudo pip install --upgrade pip
echo -e "\n\n\ninstalling jupyter notebook..."
sudo pip install jupyter
echo -e "\n\n\ninstalling keras..."
sudo pip install keras

echo -e "\n\n\ninstalling gym duckienav"
cd ~
git clone https://github.com/ARG-NCTU/gym-duckienav.git
cd ~/gym-duckienav
sudo pip install -e .

echo -e "\n\n\ninstalling docker..."
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker $USER

echo -e "\n\n\ninstalling OpenAI Gym..."
cd ~
git clone https://github.com/openai/gym.git
cd ~/gym 
sudo pip install -e .
sudo pip install gym[atari]
cd ~

echo -e "\n\n\ninstalling ncsdk..."
cd ~
sudo apt install python3-pip -y
mkdir -p ~/ncs
cd ~/ncs
git clone https://github.com/movidius/ncsdk.git
cd ~/ncs/ncsdk
make install

echo -e "\n\n\ncloning duckietown"
git clone https://github.com/duckietown/Software.git ~/duckietown
cd ~/duckietown
/bin/bash ./dependencies_for_laptop.sh

echo -e "\n\n\ncloning summer school 2018 tw"
cd ~
git clone https://github.com/duckietown/summer-school-2018-tw.git

echo -e "\n\n\nfinish installing requirements\n"
echo -e "please reboot your computer and REMEMBER to run docker-requirements.sh"
