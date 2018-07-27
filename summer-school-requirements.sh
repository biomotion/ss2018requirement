#!/bin/bash
#all requirements for summer school 2018 tw
#produced date: July 26, 2018
echo "aquiring update..."
sudo apt update
echo "upgrading pip..."
sudo apt install -y python-pip
sudo pip install --upgrade pip
echo "installing jupyter notebook..."
sudo pip install jupyter

echo "installing ncsdk..."
mkdir -p ~/ncs
cd ~/ncs
git clone https://github.com/movidius/ncsdk.git
cd ~/ncs/ncsdk
make install

echo "installing docker..."
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker $USER

echo "installing OpenAI Gym..."
cd ~
git clone https://github.com/openai/gym.git
cd gym 
sudo pip install -e .
sudo pip install gym[atari]
cd ~

echo "pulling keras docker image"
docker pull rmeertens/tensorflowgym
docker pull leotsducker/gym-duckietown

echo "cloning duckietown"
git clone https://github.com/duckietown/Software.git ~/duckietown

echo "cloning summer school 2018 tw"
git clone https://github.com/duckietown/summer-school-2018-tw.git

echo "cloning ros tutorial"
git clone https://github.com/championway/ros_tutorial.git