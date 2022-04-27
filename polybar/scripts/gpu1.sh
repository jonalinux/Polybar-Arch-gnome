#!/usr/bin/env bash

nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{ print "%{F#00ff6a}GPU%{F#f2f2f2}",""$1"%",""}'
