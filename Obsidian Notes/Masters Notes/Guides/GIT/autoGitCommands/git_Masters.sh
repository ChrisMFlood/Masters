#!/bin/bash

cd /home/chris/Desktop/Masters

git add .
git status

prompt() {
    read -p "Do you want to add and check status again? (y/n): " add_status
    if [ "$add_status" == "y" ]; then
        git add .
        git status
        prompt
    fi
}

prompt

commitmsg=$(date)
git commit -m "$commitmsg"
git push origin master
echo "Commit complete"

promptP() {
    read -p "Do you want to pull main? (y/n): " pull_status
    if [ "$pull_status" == "y" ]; then
        git pull
        echo "Pull complete"
    fi
}

promptP

echo "Complete"
echo "Good Bye"
