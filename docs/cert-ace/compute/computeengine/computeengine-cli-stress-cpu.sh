#!/bin/bash

# Install the stres utility
sudo apt-get install stress

# Use the stress utility to load test the CPU and test load balancing
sudo stress --cpu 1 --timeout 300
