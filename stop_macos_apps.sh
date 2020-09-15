#!/bin/bash
# stop_macos_apps.sh
#
# ln -s ~/stopapps ~/github/work-efficiency-utils/stop_macos_apps.sh


{
    ~/disconnect
    # shellcheck disable=SC2009
    ps -ef | grep -v grep | grep '/Applications/360' | awk '{print $2}' | xargs kill
    # shellcheck disable=SC2009
    ps -ef | grep -v grep | grep -i parallel | awk '{print $2}' | xargs kill

} 2>/dev/null

