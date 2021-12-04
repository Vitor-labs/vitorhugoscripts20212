#!/bin/bash
temp=$(date +"%F %H:%M:%S")
echo 'Online users: '$(whoami | wc -l) '|' $temp
