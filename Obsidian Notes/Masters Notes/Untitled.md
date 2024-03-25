```
git clone https://github.com/f1tenth/f1tenth_gym
cd f1tenth_gym && pip3 install -e .

cd $HOME && mkdir -p sim_ws/src

cd $HOME/sim_ws/src
git clone https://github.com/f1tenth/f1tenth_gym_ros
```
Go to `sim.yaml` [https://github.com/f1tenth/f1tenth_gym_ros/blob/main/config/sim.yaml](https://github.com/f1tenth/f1tenth_gym_ros/blob/main/config/sim.yaml) in your cloned repo, change the `map_path` parameter to point to the correct location. It should be `'<your_home_dir>/sim_ws/src/f1tenth_gym_ros/maps/levine'`
```
source /opt/ros/humble/setup.bash
cd ..
rosdep install -i --from-path src --rosdistro humble -y
colcon build
```

```
locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

sudo apt install software-properties-common
sudo add-apt-repository universe

sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update
sudo apt upgrade

sudo apt install ros-foxy-desktop

sudo apt install ros-foxy-ros-base

sudo apt install ros-dev-tools

sudo apt install python3-colcon-common-extensions

gedit ~/.bashrc
```