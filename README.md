econix-devenv
=============

//Build the devenv

sudo docker build -t="root/devenv:v1" .

//Start the devenv

sudo docker run -i -t root/devenv /bin/bash
