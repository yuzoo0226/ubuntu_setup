# # setup awsim
# echo "
# # awsim setup
# export ROS_LOCALHOST_ONLY=1
# export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# if [ ! -e /tmp/cycloneDDS_configured ]; then 
#     sudo sysctl -w net.core.rmem_max=2147483647 
#     sudo ip link set lo multicast on
#     touch /tmp/cycloneDDS_configured 
# fi
# "  >> ~/.bashrc

# sudo apt update
# sudo ubuntu-drivers autoinstall
# sudo apt install libvulkan1

# cd ~/autoware_ws/
# wget https://github.com/tier4/AWSIM/releases/download/v1.0.0/AWSIM_v1.0.0.zip
# unzip AWSIM_v1.0.0.zip
# cd AWSIM
# sudo chmod +x AWSIM.x86_64
# ./AWSIM.x86_64