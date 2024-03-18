# Setup Ros2 Workspace
```bash
mkdir ros2_ws #change ros2_ws to anything
cd ros2_ws
mkdir src
colcon build
```
or (setup script in home directory to do it automatically)[[create ros2 workspace]]
```bash
cd ~ # make sure in home directory
./ros2_ws.sh
```
add `setup.bash` to `~/.bashrc` script
# Create package
```bash
cd {worksapce}/src
ros2 pkg create {package name} --build-type ament_python --dependencies rclpy
```
`colcon build` to compile package `cd workspace`
`colcon build --packages-select` to select packages to compile
`colcon build --symlink-install` to show changes without recompiling (file  must be executable)

if error/warning `/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.`:
```bash
pip3 install setuptools==58.2.0
```
# Nodes
```bash
cd {worksapce}/{src}/{package}
cd {package} # folder with same name as package
touch {node name.py}
```
in VS 
```python
#!/usr/bin/env python3

import rclpy
from rclpy.node import Node
  
class myNode(Node):
	def __init__(self):
		super().__init__("nodeName")  
  
def main(args=None):
	rclpy.init(args=args)
	node = myNode()
	rclpy.spin(node)
	rclpy.shutdown()

if __name__ == '__main__':
	main()
```
in terminal
```bash
chmod +x {node file name}
./{node file name}
```
run from `install`
```python
'console_scripts': [
	"py_node = my_py_pkg.my_first_node:main"
],
```

```bash
cd ~/install/{pkg}/{pkg}
source ~/.bashrc
./{node file name}
```
## Rename node
```bash
ros2 run my_py_pkg py_node --ros-args --remap __node:=abc
```
or 
```bash
ros2 run my_py_pkg py_node --ros-args -r __node:=abc
```

# Topics
## Publisher
```python
self.publisher_ = self.create_publisher(data type, "topic name",10)
self.timer_ = self.create_timer(0.5, self.publishCallback)

def publishCallback(self):
	msg = data type
	msg.data = value
	self.publisher_.publish(msg)
```
## Subscriber
```python
self.subscriber_ = self.create_subscription(data type, "topic name", subscriberCallback, 10)

def subscriberCallback(self, msg):
	# do something
	self.get_logger().info(msg.data)
```

# Service
## Server
```python
sef.server_ = self.creat_service(service type, "service name", serviceCallback)

def serviceCallback(self, request, response):
	# do something
	return response
```

## Client
```python

```
