#!/bin/bash
echo "修改启动文件权限"
chmod +x ./start.sh
echo "关闭插件"
killall videoPluginForLinux
echo "启动插件，输出日志到log.log"
nohup videoPluginForLinux > log.log 2>&1 &
echo "测试效果，浏览器访问 http://localhost:8083/static"
