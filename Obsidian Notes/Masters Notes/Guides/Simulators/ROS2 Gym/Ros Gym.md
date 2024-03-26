# To launch:
terminal 1:
```bash
cd $HOME/sim_ws
colcon build
xdg-open http://localhost:8080/vnc.html
cd src
cd f1tenth_gym_ros
sudo docker-compose up
```
terminal 2:
```bash
sudo docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```
```bash
source /opt/ros/humble/setup.bash
source install/local_setup.bash
colcon build
ros2 launch f1tenth_gym_ros gym_bridge_launch.py
```
terminal 3:
```bash
sudo docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```
```bash
source /opt/ros/humble/setup.bash
source install/local_setup.bash

```
eg: use keyboard to control car
```bash
sudo docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```
```bash
source /opt/ros/humble/setup.bash
source install/local_setup.bash
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```
## Run without docker
terminal 1:
```bash
cd $HOME/sim_ws
source /opt/ros/humble/setup.bash
source install/local_setup.bash
colcon build
ros2 launch f1tenth_gym_ros gym_bridge_launch.py
```
