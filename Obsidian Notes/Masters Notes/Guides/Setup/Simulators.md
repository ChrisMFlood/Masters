Run  [[Computer Setup (Install All Software and Simulators)]] to install everything
Install [Python](Software.md) before installing simulators
# F1tenth Python Gym
```bash
virtualenv gym_env
source gym_env/bin/activate
git clone https://github.com/f1tenth/f1tenth_gym.git
cd f1tenth_gym
pip install -e .
```
See [[Skeleton for simulation loop]] to create simulation

# F1tenth Ros simulator
[Documentation](https://github.com/f1tenth/f1tenth_gym_ros)
install docker first and ROS2
```bash
git clone https://github.com/f1tenth/f1tenth_gym
cd f1tenth_gym && pip3 install -e .
```
new terminal
```bash
cd $HOME && mkdir -p sim_ws/src

cd $HOME/sim_ws/src
git clone https://github.com/f1tenth/f1tenth_gym_ros
```
change the `map_path` parameter to point to the correct location `sim.yaml`. It should be `'<your_home_dir>/sim_ws/src/f1tenth_gym_ros/maps/levine'`
```bash
source /opt/ros/humble/setup.bash
cd ..
rosdep install -i --from-path src --rosdistro humble -y

colcon build
```
in a new terminal
```bash
cd $HOME/sim_ws/src
cd f1tenth_gym_ros
```
change foxy to humble in docker file
```bash
docker-compose up
```
in a new terminal
```bash
docker exec -it f1tenth_gym_ros-sim-1 /bin/bash
```
got to [noVNC](http://localhost:8080/vnc.html) and connect 
## To Launch
```bash
cd $HOME/sim_ws
source /opt/ros/humble/setup.bash
source install/local_setup.bash
ros2 launch f1tenth_gym_ros gym_bridge_launch.py
```
In another terminal for keyboard control
```bash
ros2 run teleop_twist_keyboard teleop_twist_keyboard
```
# Ben F1tenth_sim
```bash
cd Desktop
git clone https://github.com/ChrisMFlood/f1tenth_sim.git
cd f1tenth_sim
python3.10 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install -e .
git submodule init
git submodule update
cd trajectory_planning_helpers
pip install -e .
```
To run pure pursuit:
- run [pure pursuit](/home/chris/Desktop/f1tenth_sim/f1tenth_sim/classic_racing/RaceTrackGenerator.py) 
	- change `params.mu` in `generate_racelines()` to 0.6 and 0.7