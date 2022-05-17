#!/bin/bash

declare -A USERS
USERS[admin]=PASSWORD_CHANGE_ME_PLEASE

for K in "${!USERS[@]}"
do 
    echo $K:$(openssl passwd -apr1 "${USERS[$K]}")
done | paste -s -d, -