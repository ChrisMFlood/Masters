[[UnifyingF1TenthRacing.pdf#page=1&selection=4,0,4,8|UnifyingF1TenthRacing]]

# Current approaches

## Perception #perception
Perception is the task of building a map and localising the vehicle on the map

> ROS SLAM toolbox (using graph SLAM) is commonly used [7], [8]. 
[[UnifyingF1TenthRacing.pdf#page=2&selection=27,4,28,15|UnifyingF1TenthRacing, page 2]]

> Walsh et al. [9] implement a computationally efficient method for particle filter localization. Their approach, and open-source repo, is the standard localization method used in many other approaches [10], [11]. An extension of their approach has improved the original implementation by using a higher-order motion model [12]
[[UnifyingF1TenthRacing.pdf#page=2&selection=28,16,33,38|UnifyingF1TenthRacing, page 2]]

> the particle filter remains the most commonly used method due to its simplicity and robustness.
[[UnifyingF1TenthRacing.pdf#page=2&selection=36,1,37,37|UnifyingF1TenthRacing, page 2]]

## Planning #planning 

### Offline
> Offline trajectory planning uses an optimisation algorithm and map of the track to generate an optimal set of waypoints. The baseline planning method for most works uses a minimum curvature or min- imum time trajectory planning formulation from Heilmeier et al. [14], which formulates the trajectory planning problem as a quadratic programming problem. 
[[UnifyingF1TenthRacing.pdf#page=2&selection=41,0,65,36|UnifyingF1TenthRacing, page 2]]
### Online
> At each planning step, online trajectory planning approaches generate a set of control inputs and a corresponding trajectory for a receding horizon [19]. The most popular approach is to use a model predictive controller (MPC), which optimises a trajectory to track a centre line [20] or an offline-generated trajectory [21]. MPC has been used for online system identification [20] and has the advantage of being able to update the vehicle model as more data is collected [21], [22]. Since MPC algorithms replan at each timestep, they can more easily integrate obstacle avoidance strategies [23], [24]. Due to the complexity of implementing optimisation routines, there is little comparison between MPC formulations (such as between different dynamics models) or other methods
[[UnifyingF1TenthRacing.pdf#page=2&selection=75,0,80,40|UnifyingF1TenthRacing, page 2]]

## Control #control
> The pure pursuit algorithm is a geometric ap- proach to path following based on the vehicle dynamics [25], and has been widely implemented in many works [10], [26], [27]. An improvement on the original algorithm of using a varying length lookahead distance based on vehicle speed #purpersuit
[[UnifyingF1TenthRacing.pdf#page=2&selection=92,0,96,60|UnifyingF1TenthRacing, page 2]]

## Mapless methods #followthegap
> A commonly used mapless approach for F1TENTH racing is the Follow-the-Gap (FTG) controller. Proposed by Sezer et at. [29], this is a reactive method based on identifying gaps in the car’s LiDAR signal. After finding the gaps, the car’s steering angle is directly defined as the angle in direction or the widest or furthest. 
> An extension to FTG is the disparity extender [30]. In this approach, before detecting the gaps in the LiDAR signal, all disparities in the LiDAR signal are identified. The distance readings of the LiDAR signal adjacent in some distance to the disparity are set to the minimum distance in each interval. Typically, the interval is chosen as the vehicle width plus a safety margin, thus avoiding trajectories that cut obstacles closely.
[[UnifyingF1TenthRacing.pdf#page=2&selection=131,0,143,40|UnifyingF1TenthRacing, page 2]]

# Racing methods
## Particle filter #perception/particlefilter 
> The particle filter (PF) algorithm uses the control input and the 2D LiDAR scan to estimate the vehicle’s pose on the map [9]. The algorithm is a recursive Bayesian state estimator designed for non-parametric distributions by representing the belief of the vehicle’s pose by a set of particles.
[[UnifyingF1TenthRacing.pdf#page=4&selection=111,0,115,51|UnifyingF1TenthRacing, page 4]]

## Trajectory Optimisation and Tracking 
generate min curvature path based on track center points
#purpersuit used to follow path

## Model Predictive Contouring Control #MPCC 

## follow the gap #followthegap 
> the follow-the-gap (FTG) method, also known as the dis- parity extender, is a simple, mapless approach to autonomous racing [29], [30]. The algorithm identifies the nearest bound- ary/obstacle in the LiDAR scan and excludes a bubble of the beams around it. Then, the largest visible gap in the LiDAR scan is identified, and the steering angle is calculated to drive towards the middle of the gap. The speed is selected by using a higher speed (5 m/s) for small steering angles and a low speed (3m/s) for high steering angles.
[[UnifyingF1TenthRacing.pdf#page=5&selection=458,1,466,38|UnifyingF1TenthRacing, page 5]]

# Evaluation  #evaluation
## benchmark parameters #benchmark
1. localisation error and control frequency effct on **laptime**
2. completion rate
3. progress before crashing



# Questions
- What is the paper about in our own words?
	- presents a survey of current algorithms and a comparison by testing on the f1 tenth gym
- What are the best parts of it?
	- racing methods and results section were informative
- What parts are difficult to understand?
	-  found MPCC difficult to understand but this is probaly due to lack of understanding
- What is at least one thing you think needs improving?
	-  

[[UnifyingF1TenthRacing.pdf#page=9&selection=39,0,40,9|References]]

read:
B. Evans, H. A. Engelbrecht, and H. W. Jordaan, “Learning the subsys- tem of local planning for autonomous racing,” in 2021 20th International Conference on Advanced Robotics (ICAR). IEEE, 2021, pp. 601–606.
