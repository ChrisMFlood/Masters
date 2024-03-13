```python
import gym
import numpy as np
from your_custom_policy import planner # the policy/motion planner that you create

# instantiating the environment
racecar_env = gym.make('f110_gym:f110-v0')
obs, step_reward, done, info = racecar_env.reset(np.array([[0., 0., 0.], # pose of ego
                                                           [2., 0., 0.]])) # pose of 2nd agent
# instantiating your policy
planner = planner()

# simulation loop
lap_time = 0.

# loops when env not done
while not done:
    # get action based on the observation
    actions = planner.plan(obs)

    # stepping through the environment
    obs, step_reward, done, info = racecar_env.step(actions)

    lap_time += step_reward
```