#!/bin/bash

# Start QTerminal and move to Desktop 1
qterminal &
sleep 2
wmctrl -x -r "qterminal" -t 0

# Start VS Code and move to Desktop 2
code &
sleep 2
wmctrl -x -r "Code" -t 1

# Start Firefox and move to Desktop 3
firefox &
sleep 2
wmctrl -x -r "firefox" -t 2




