# Install
```
git clone https://github.com/f1tenth/f1tenth_gym
cd f1tenth_gym && pip3 install -e .

cd $HOME && mkdir -p sim_ws/src

cd $HOME/sim_ws/src
git clone https://github.com/f1tenth/f1tenth_gym_ros
```
- Update correct parameter for path to map file: Go to `sim.yaml` [https://github.com/f1tenth/f1tenth_gym_ros/blob/main/config/sim.yaml](https://github.com/f1tenth/f1tenth_gym_ros/blob/main/config/sim.yaml) in your cloned repo, change the `map_path` parameter to point to the correct location. It should be `'<your_home_dir>/sim_ws/src/f1tenth_gym_ros/maps/levine'`
```
source /opt/ros/humble/setup.bash
cd ..
rosdep install -i --from-path src --rosdistro humble -y
colcon build
```
## Docker
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
```
## Nividia Docker2
```
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
    
sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update

sudo apt-get install -y nvidia-container-toolkit
```

```
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
```
## Rocker
```
sudo apt-get install python3-venv
mkdir -p ~/rocker_venv
python3 -m venv ~/rocker_venv

cd ~/rocker_venv
. ~/rocker_venv/bin/activate
pip install git+https://github.com/osrf/rocker.git
# For any new terminal re activate the venv before trying to use it:
. ~/rocker_venv/bin/activate
```
For any new terminal re activate the venv before trying to use it.
```
. ~/rocker_venv/bin/activate
```
# Start simulator
```
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
. ~/rocker_venv/bin/activate
cd 
cd sim_ws/src/f1tenth_gym_ros/
sudo docker build -t f1tenth_gym_ros -f Dockerfile .
sudo rocker --nvidia --x11 --volume .:/sim_ws/src/f1tenth_gym_ros -- f1tenth_gym_ros
```
In container:
```
source /opt/ros/humble/setup.bash
source install/local_setup.bash
ros2 launch f1tenth_gym_ros gym_bridge_launch.py
```
## New Node:
```
. ~/rocker_venv/bin/activate
sudo rocker --nvidia --x11 --volume .:/sim_ws/src/f1tenth_gym_ros -- f1tenth_gym_ros
```
In container:
```
source /opt/ros/humble/setup.bash
source install/local_setup.bash
```
## Keyboard Control:
```
source /opt/ros/humble/setup.bash
source install/local_setup.bash
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```
## Make new agent:
