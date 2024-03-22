# To launch:
terminal 1:
```bash
sudo docker-compose up
```
terminal 2:
```bash
sudo docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```
```bash
source /opt/ros/foxy/setup.bash
source install/local_setup.bash
ros2 launch f1tenth_gym_ros gym_bridge_launch.py
```
terminal 3:
```bash
sudo docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```
```bash
source /opt/ros/foxy/setup.bash
source install/local_setup.bash
...
```
