#!/usr/bin/env bash

bash \
	./test-wm.sh \
	kwin_x11 \
	'sleep 0' \
	'search --class electron-issue-x-ewmh-visibility-demo windowminimize --sync' \
	'search --class electron-issue-x-ewmh-visibility-demo windowactivate --sync'
