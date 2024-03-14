```bash
#!/bin/bash

echo "Enter a name for your ROS 2 workspace: "
read workspace_name

# Append "_ws" to the chosen workspace name
workspace_name="${workspace_name}_ws"

# Create the workspace directory
mkdir "$workspace_name"
cd "$workspace_name"

# Create the 'src' directory
mkdir src

# Build the workspace using colcon
colcon build

# Echo the source path to setup.bash
echo "To use your workspace, source the setup.bash file located at: "
echo "$PWD/install/setup.bash"

# Prompt to source the setup file
echo "Do you want to source the setup file now and add it to your bashrc? (y/n)"
read answer

if [ "$answer" = "y" ]; then
    # Source the setup file
    source "$PWD/install/setup.bash"

    # Add the source command to bashrc
    echo "source $PWD/install/setup.bash" | tee -a ~/.bashrc > /dev/null

    echo "The setup file has been sourced and added to your ~/.bashrc."
else
    echo "Remember to source the setup file before using your workspace."
fi
```