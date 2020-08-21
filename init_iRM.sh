#!/bin/bash
# reload iRightMouse app

set -n


ps -ef | pgrep iRightMouse | xargs kill -9

rm -rf ~/Library/Group' 'Containers/4K6FWZU8C4.cn.better365.iRightMouse
rm -rf ~/Library/Containers/cn.better365.iRightMouse
killall Finder

sleep 1

open -a iRightMouse.app

