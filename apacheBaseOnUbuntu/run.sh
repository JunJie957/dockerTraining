#!/bin/bash

# 启动继承自父镜像的ssh服务
/usr/sbin/sshd &

exec apache2 -D FOREGROUND
