```bash
ssh-keygen -t ed25519 -C "23589086@sun.ac.za"
```
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
```

location: /home/chris/.ssh/id_ed25519.pub