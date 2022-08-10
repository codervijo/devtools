#!/bin/bash

GT_CMD="/usr/bin/gnome-terminal"
WD1=${HOME}/Documents
WD2=${HOME}/linux-test

${GT_CMD} --window --working-directory=${WD1} -- bash -c 'ls; bash'
${GT_CMD} --window --working-directory=${WD2} --tab -- bash -c 'ls; bash'


