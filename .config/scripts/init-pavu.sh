#!/bin/bash
GDK_BACKEND=x11 pavucontrol &
sleep 0.4
pkill pavucontrol
