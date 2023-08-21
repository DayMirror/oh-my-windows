$user=$args[0]
echo "Adding user $user to docker group"
net localgroup docker-users "$user" /ADD
wsl --update # docker needs later version of wsl