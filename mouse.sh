#!/bin/bash

xinput set-prop $1 "Device Accel Velocity Scaling" 0.0001
xinput set-prop $1 "Device Accel Constant Deceleration" 2

xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Accel Velocity Scaling" 0.0001
xinput set-prop "SynPS/2 Synaptics TouchPad" "Device Accel Constant Deceleration" 2
