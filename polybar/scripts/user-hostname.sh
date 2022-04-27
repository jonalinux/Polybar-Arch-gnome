#!/usr/bin/env bash

USER_HOSTNAME() { HOSTNAME=$(hostname); }
USER_HOSTNAME
echo " $USER@$HOSTNAME"


