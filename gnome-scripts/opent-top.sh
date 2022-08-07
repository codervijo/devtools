#!/bin/bash

GT_CMD="/usr/bin/gnome-terminal"

${GT_CMD} --window -t 'Top Terminal' -- bash -c 'top; bash' \
