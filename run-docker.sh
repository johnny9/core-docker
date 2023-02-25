#!/bin/bash

docker=bitcoin-core

docker run -it --rm --privileged \
    --volume "$SSH_AUTH_SOCK:/run/host-services/ssh-auth.sock" \
    --volume "/home/$USER:/home/$USER" \
    --env SSH_AUTH_SOCK=/run/host-services/ssh-auth.sock \
    --user=$UID \
    $docker \
    /bin/bash
