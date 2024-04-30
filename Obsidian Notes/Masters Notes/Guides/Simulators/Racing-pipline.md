# Download
## F1tenth Bridge
```bash
git clone https://github.com/f1tenth/f1tenth_gym
cd f1tenth_gym && pip3 install -e .

cd $HOME && mkdir -p sim_ws/src

cd $HOME/sim_ws/src
git clone https://github.com/f1tenth/f1tenth_gym_ros
```
- Update correct parameter for path to map file: Go to `sim.yaml` [https://github.com/f1tenth/f1tenth_gym_ros/blob/main/config/sim.yaml](https://github.com/f1tenth/f1tenth_gym_ros/blob/main/config/sim.yaml) in your cloned repo, change the `map_path` parameter to point to the correct location. It should be `'<your_home_dir>/sim_ws/src/f1tenth_gym_ros/maps/levine'`
```bash
source /opt/ros/humble/setup.bash
cd ..
rosdep install -i --from-path src --rosdistro humble -y
colcon build
```
## Pipeline 
```bash

```
# Launch
## Bridge
## Tests
# Tests
# Create Custom Components
# Simulation to RL

