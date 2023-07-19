#!/bin/bash

# Install prerequisites
sudo apt-get update
sudo apt-get install wget apt-transport-https -y

# Add Erlang repository key
sudo wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -

# Add Erlang Repository
echo "deb https://packages.erlang-solutions.com/ubuntu focal contrib" | sudo tee /etc/apt/sources.list.d/erlang-solution.list

# Install Erlang
sudo apt-get update
sudo apt-get install esl-erlang
