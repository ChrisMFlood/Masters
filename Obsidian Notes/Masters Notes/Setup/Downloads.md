# Python
```

```
# VS code
```
wget -O vscode.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
sudo dpkg -i vscode.deb
```
or
```
sudo apt update
sudo apt install code
```

# Latex
```
sudo apt update
sudo apt upgrade
sudo apt install texlive-full
code --install-extension james-yu.latex-workshop
code --install-extension nickfode.latex-formatter
code --install-extension lw-lonely.latex-table-helper
code --install-extension mathematic.vscode-latex
code --install-extension tecosaur.latex-utilities
```

# ROS2
```

```

# Ben F1tenth_sim
```
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
# Obsidian
```
```

# Chrome
```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f
```

# Slack
```
sudo snap install slack
```

# Terminator
```
sudo apt update
sudo apt upgrade 
sudo apt install terminator
```

# Docker
```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo docker run hello-world
```
# Set up computer
```
sudo apt update
sudo apt upgrade

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f

sudo apt update
sudo apt install code

sudo apt update
sudo apt upgrade
sudo apt install texlive-full
code --install-extension james-yu.latex-workshop
code --install-extension nickfode.latex-formatter
code --install-extension lw-lonely.latex-table-helper
code --install-extension mathematic.vscode-latex
code --install-extension tecosaur.latex-utilities

sudo apt install terminator

sudo snap install slack

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

cd ~
```