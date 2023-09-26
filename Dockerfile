# Use an official Arch Linux as a parent image
FROM archlinux:latest

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Update and upgrade packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm sudo nano vim neovim ufw zip unzip wget curl git neofetch make gcc fontconfig zsh && \
    pacman -Scc --noconfirm

# Explicitly upgrade Golang
RUN pacman -S --noconfirm go && \
    go version

# Your additional commands here.
