tput setaf 2 # set color to green
echo "The following packages will be installed:"
echo "*. mpct=cd /mnt/hgfs/mpc/src"
echo "*. alias mpc="nautilus /mnt/hgfs/mpc/src""
echo "*. vscode"
echo "*. google chrome"
echo "*. terminator"
echo "*. ROS Melodic"
echo "*. catkin_ws"
tput sgr0 # reset color

# export the command to open the terminal from mpc folder
echo "alias mpct=\"cd /mnt/hgfs/mpc/src\"" >> ~/.bashrc

# export the command to open the mpc folder
echo "alias mpc=\"nautilus /mnt/hgfs/mpc/src\"" >> ~/.bashrc

# install vscode
tput setaf 2
echo "Installing VSCode"
tput sgr0
yes | wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
yes | sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
yes | sudo apt install apt-transport-https
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt install code
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt autoremove

# install google chrome
tput setaf 2
echo "Installing Google Chrome"
tput sgr0
yes | wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
yes | sudo dpkg -i google-chrome-stable_current_amd64.deb
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt autoremove

# install terminator
tput setaf 2
echo "Installing Terminator"
tput sgr0
sudo apt install terminator
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt autoremove
# add shortcut to set terminator as default


# install ROS Melodic
tput setaf 2
echo "Installing ROS Melodic"
tput sgr0
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
yes | sudo apt install curl 
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
yes | sudo apt update
yes | sudo apt install ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
yes | sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
yes | sudo apt install python-rosdep
yes | sudo rosdep init
yes | rosdep update
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo apt autoremove

# create catkin_ws




