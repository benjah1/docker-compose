curl -L https://github.com/docker/compose/releases/download/1.5.2/run.sh > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

echo "DOCKER_OPTS=\"-H tcp://127.0.0.1:4243 -H unix:///var/run/docker.sock\"" >> /etc/default/docker

service docker.io restart

sudo -u ubuntu export DOCKER_HOST=tcp://localhost:4243
