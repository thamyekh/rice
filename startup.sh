#!/bin/env bash
# copy this file to: $HOME/.config/polybar/startup.sh

# terminate any running polybar instances
killall -q polybar

# wait until process has been shutdown
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# launch polybar bar, the 'r' flag reloads the config dynamically
# when a change is made to .config/polybar/config
polybar example &

echo "polybar launched."


