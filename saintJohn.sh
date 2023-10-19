#!/bin/bash

PID=$(lsof /var/log/bad.log | awk 'FNR==2{print $2}')
sudo kill $PID