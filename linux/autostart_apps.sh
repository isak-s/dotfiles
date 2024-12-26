#!/bin/bash

# Start VS Code and move to Desktop 0
sleep 2
code &
sleep 2
wmctrl -x -r "Visual Studio Code" -t 0

# Start Firefox and move to Desktop 2
firefox &
sleep 2
wmctrl -x -r "Mozilla Firefox" -t 2

# Start QTerminal and move to Desktop 1
qterminal &
sleep 2
wmctrl -x -r "Shell No. 1" -t 1


