Run  [[Computer Setup (Install All Software and Simulators)]] to install everything
# Python
```
sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-colcon-common-extensions
```
# VS code
```
wget -O vscode.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo dpkg -i vscode.deb
```
or
```
sudo apt update
sudo apt install code
```

# Latex
```
sudo apt update
sudo apt upgrade
sudo apt install texlive-full
code --install-extension james-yu.latex-workshop
code --install-extension nickfode.latex-formatter
code --install-extension lw-lonely.latex-table-helper
code --install-extension mathematic.vscode-latex
code --install-extension tecosaur.latex-utilities
```
[[Useful Latex Stuff]] for shortcuts in latex
# ROS2 (Humble)
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

sudo apt install ros-humble-desktop

sudo apt install ros-humble-ros-base

sudo apt install ros-dev-tools

sudo apt install python3-colcon-common-extensions

gedit ~/.bashrc
```
add the following to the end of the `~/.bashrc` script:
```
source /opt/ros/humble/setup.bash
source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash
```
## Setup Ros2 Workspace
```
mkdir ros2_ws #change ros2_ws to anything
cd ros2_ws
mkdir src
colcon build
```
or (setup script in home directory to do it automatically)[[create ros2 workspace]]
```
cd ~ # make sure in home directory
./ros2_ws.sh
```
add `setup.bash` to `~/.bashrc` script
## Create package
```
cd {worksapce}/src
ros2 pkg create {package name} --build-type ament_python --dependencies rclpy
```
`colcon build` to compile package
`colcon build --packages-select` to select packages to compile

if error/warning `/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.`:
```
pip3 install setuptools==58.2.0
```
## Nodes
```
cd {worksapce}/{src}/{package}
cd {package} # folder with same name as package
touch {node name.py}
```
in VS
```python
#!/usr/bin/env python3
import rclpy
from rclpy.node import Node

def main(args=None):
	rclpy.init(args=args)
	node = Node("py_test")
	node.get_logger().info("Hello ROS2")
	rclpy.spin(node)
	rclpy.shutdown()

if __name__ == '__main__':
	main()
```
in terminal
```
chmod +x {node file name}
./{node file name}
```
run from `install`
```python
'console_scripts': [
	"py_node = my_py_pkg.my_first_node:main"
],
```
```
cd ~/install/{pkg}/{pkg}
source ~/.bashrc
./{node file name}
```
# Obsidian
```
```

# Chrome
```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f
```

# Slack
```
sudo snap install slack
```

# Terminator
```
sudo apt update
sudo apt upgrade 
sudo apt install terminator
```

# Docker
```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

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
```
## Docker Compose
```
sudo apt install gnome-terminal
sudo apt-get update
cd Downloads
sudo apt-get install ./docker-desktop-4.28.0-amd64.deb

systemctl --user start docker-desktop

docker compose version
docker --version
docker version
```
