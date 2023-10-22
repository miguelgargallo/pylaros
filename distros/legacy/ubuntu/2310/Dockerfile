# This version does not contains the Update Octover Update, please wait. Maybe will be released.
# Use an official Ubuntu Server 22.04.3 LTS as a parent image
FROM ubuntu:23.10

# Set the maintainer label
LABEL maintainer="pylaros@itamaesan.org"

# Disable interactive installation prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update and upgrade packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo nano vim neovim ufw zip unzip wget curl git make gcc zsh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Your additional commands here
