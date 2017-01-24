#!/bin/bash -ex
[ ! $1 ] && echo 'Please enter IP value after the script' && exit 1
ssh -i joe_main_ssh rightscale@$1

