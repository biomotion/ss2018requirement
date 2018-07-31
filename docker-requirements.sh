docker pull ubuntu:16.04
docker pull peterx7803/base_image:cpu_ros_caffe
cd ~/
mkdir ~/test_build
cd test_build
wget --no-check-certificate "https://drive.google.com/uc?export=download&id=170DSV2R0RM4zSUw-RHJ8O2DSmDpAX4Du"  -O  dockerfile.zip
unzip dockerfile.zip
docker build -t test_ubuntu -f Dockerfile .
