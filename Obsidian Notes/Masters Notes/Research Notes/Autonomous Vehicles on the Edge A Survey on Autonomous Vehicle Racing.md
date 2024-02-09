[Autonomous Vehicles on the Edge: A Survey on Autonomous Vehicle Racing](Autonomous_Vehicles_on_the_Edge_A_Survey_on_Autonomous_Vehicle_Racing.pdf)

**Perception:** 
The general term for all algorithms that perceive the environment and derive knowledge about it. perception includes detecting objects, detecting the free space, mapping the environment as well as localizing the autonomous vehicle

the fundamental problems for autonomous racing perception are the following: 
	• High speed object detection. 
	• High speed localization and state estimation. 
	• Localization on wide areas without specific landmarks. 
	• Precise localization information necessary to achieve high dynamic trajectory planning and control
**Planning:** 
	- Global planning 
		- provides an optimal path, better known as raceline (depicted in Figure 4), around the racetrack. In the context of racing, global planning often optimize for the lowest lap time. Therefore, when following this race- line, the car drives an optimal path around the racetrack – under the constraints of the raceline generation – as fast as possible.
		- Research from the field of global planning can be roughly divided into different strategies using the objectives of the overall optimization: lap time, geometric properties of the race lines, or energy spent. Racing, as a context for optimization, provides a clear mea- sure of quality in lap time t lap on participating agents. So naturally lowering t lap is a popular choice when it comes to global planning
	- Local planning (or motion planning) 
		- plans on a finer granularity compared to global planning, usually under the assumption that an optimal global trajectory is provided. Local planners operate in a certain time horizon, and aim to avoid obstacles while still provide a fast and reliable path that does not deviate too much from the optimal global raceline.
		- In local planning, the main objective is to plan the cars motion for a fixed horizon by avoiding collisions with either the environment or adversaries (Figure 6). There are three main strategies: 
			1) Modifying the global plan via optimization. 
			2) Sample multiple dynamically feasible trajectories and select the best one around obstacles. 
			3) Sample in the free space around obstacles to find a feasible trajectory.
	- Behavioral planning 
		- provides information about the high-level mission planning of the racecar. This can include the decision making about overtaking maneuvers (overtaking left/overtaking right/stay behind), the energy management strategy, interaction with other vehicles and the reaction to inputs from race control (e.g., flags, speed limits). As a summary
		- In behavior planning, the focus is usually on high-level decision making on tasks such as selecting an appropriate weighting of different objectives, or selecting plans that impedes the progress of opponents. The research in this area mainly focuses on two different strategies: 
			1) Assigning multiple cost functions with weighting and selecting the plan with the lowest overall cost. 
			2) Combine the local planner with game theoretic methods

the fundamental problems for autonomous racing planning as the following: 
	• Minimum-time optimization for a global optimal raceline. 
	• Long local planning horizon for recursive feasibility. 
	• Obstacle avoidance and vehicle reaction at high speeds. 
	• High re-planning frequency for real-time capability. 
	• Decision making under high uncertainty. • Interaction planning with non-cooperative agents.

**Control:**
the fundamental problems for autonomous racing control as the following: 
	• Highly accurate path tracking for low lateral errors. 
	• Highly accurate path tracking for low heading errors. 
	• Highly accurate velocity tracking for fast lap times. 
	• Stable vehicle behavior at high accelerations. 
	• Exact modeling of the nonlinear vehicle behavior. 
	• High control frequency for real-time high speed driving.

- Classic Control
- Model Predictive Control



SOFTWARE PERFORMANCE 
(i) Perception: In Autonomous Racing, we saw authors adapting mostly well-known algorithms from SLAM, com- puter vision, and deep learning for perception. These algo- rithms are modified and enhanced for usage on the racetrack. A common thread we see in perception for Autonomous Racing is that LiDARs and odometry are still preferred for almost all SLAM approaches. Although there is plenty of research on camera-only perception, and it is widely used on Tesla vehicles worldwide, it’s effectiveness has yet to be demonstrated in autonomous racing. Similarly, for object detection, well-known methods such as YOLO and its vari- ations are used. From the authors’ perspective there is no preferable method in this field since most approaches are adaptation from software used on road vehicles. On contrary, as pointed out in Section V, we see the trend to develop high- speed localization and object detection methods. And with the recent development of Event-based Vision [5], it would a great candidate as a perception sensor in racing scenarios. (ii) Planning: For global planning, the predominant approach is to set up an optimal control problem (OCP). The OCP not only considers the objective for the global planner (minimum lap time), but also considers hard con- straints on the vehicle’s dynamic behavior. The optimization produces competent racelines has a choice of several efficient solvers for fast computation. Since the global plan is gener- ated offline, the higher computation time of these methods can be neglected. For local planning, we recommend decoupling local tra- jectory generation and local trajectory tracking. In trajectory generation, one can use a nominal dynamic model that describe the vehicle’s behavior under most conditions to create multiple dynamically viable local plans with differ- ent characteristics. Requirements and cost objectives can be baked into these trajectories thus path selection can be done efficiently. E.g., sampling-based trajectory generation. Then, when tracking the selected trajectory, an MPC could be used with up-to-date operating condition of the vehicle. The decoupling of trajectory generation, selection, and tracking also allows integration with RL and game-theoretic methods during trajectory selection. (iii) Control: With the decoupling of planning and con- trol, the predominant approach amongst surveyed work is to focus on high precision path and velocity tracking with a dedicated algorithm. Although classic controllers (e.g., PID controllers) can achieve a good level of con- trol precision, MPC approaches captures and considers the vehicle’s dynamic behavior in the control loop, and thus usually achieve higher control precision and accuracy. With the development of high performance solvers, (e.g., [244]), we see that Non-linear MPC can be solved in real time on real vehicle hardware with satisfying efficiency. Furthermore, learning-based approaches can address the limitation of tra- ditional MPCs where the underlying predictive model can be updated online. However, it is yet to be shown the effec- tiveness of these approaches in a multi-vehicle competitive scenario. (iv) Deep and Reinforcement Learning: In all the work surveyed in this field, only a small portion of algorithms are tested on real vehicles in realistic high speed envi- ronments. Among these algorithms implemented on the real vehicle, none of them consider safety and robust- ness constraints, which are crucial in the adversarial racing scenario. Nevertheless, RL and Deep Learning approaches show promising results in encoding the highly non-linear interaction and dynamics of a racing scenario. Together with the development of high-performance perception pipelines, the viability of these algorithms for multi-agent interaction is expected to improve significantly.

