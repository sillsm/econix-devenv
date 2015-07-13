#!/bin/bash
# Start bash shell in worker container.

# Prepare to forward git config of build env. to container.
EMAIL="$(git config --global user.email)"
NAME="$(git config --global user.name)"

sudo docker run -i -t -p 8080:8080 econix/worker:v1 /bin/bash \
-c "clear & git config --global user.email '${EMAIL}' & git config --global user.name '${NAME}' & /bin/bash"
