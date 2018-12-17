#!/bin/bash

secret=$TURN_SECRET && \
time=$(date +%s) && \
expiry=8400000 && \
username=$(( $time + $expiry )) &&\
echo username:$username && \
echo password : $(echo -n $username | openssl dgst -binary -sha1 -hmac $secret | openssl base64)
