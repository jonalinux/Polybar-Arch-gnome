#!/usr/bin/env bash

get_snapshots() { SNP=$(ls /.snapshots/ | wc -l   );}

get_snapshots
echo "$SNP"


