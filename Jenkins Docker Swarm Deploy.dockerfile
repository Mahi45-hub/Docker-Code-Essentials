
nano /lib/systemd/system/docker.service
ExecStart=/usr/bin/dockerd -H unix:// -H tcp://0.0.0.0:2375
systemctl daemon-reload
systemctl restart docker
sudo nohup docker daemon -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock &
sudo usermod -a -G root jenkins
usermod -a -G docker jenkins
http://www.littlebigextra.com/automate-service-deployment-docker-swarm-using-jenkins/
