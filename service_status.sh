services="nginx sshd docker"

for service in $services
do
    systemctl is-active --quiet $service && echo "$service running" || echo "$service not running"
done
