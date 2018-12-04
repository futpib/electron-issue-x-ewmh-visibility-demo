#!/usr/bin/env bash

set -xe

Xephyr -screen 800x600 :42 &
export DISPLAY=:42

sleep 1

$1 &

sleep 1

xdotool $2

sleep 1

export ELECTRON_ENABLE_LOGGING=true
yarn electron . &

sleep 1

xprop -id $(xdotool search --class electron-issue-x-ewmh-visibility-demo) -spy | grep --color . &

sleep 1

xdotool $3

sleep 1

xdotool $4

sleep 1

xdotool $3

sleep 1

xdotool $4

sleep 1

kill $(jobs -p)
