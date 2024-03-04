# F1tenth Ros simulator
```
git clone https://github.com/f1tenth/f1tenth_gym
cd f1tenth_gym && pip3 install -e .

cd $HOME/sim_ws/src
git clone https://github.com/f1tenth/f1tenth_gym_ros

source /opt/ros/humble/setup.bash
cd ..
rosdep install -i --from-path src --rosdistro humble -y

colcon build


```