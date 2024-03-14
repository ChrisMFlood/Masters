```bash
sudo apt update
sudo apt upgrade

sudo apt install python3
sudo apt install python3-pip
sudo apt install python3-colcon-common-extensions

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

cd ~

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