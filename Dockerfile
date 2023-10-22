# Use the base Arch Linux image
FROM archlinux:latest

# Update the system
RUN pacman -Syu --noconfirm

# Install necessary packages (like sudo, openssh, etc.)
RUN pacman -S --noconfirm sudo openssh

# Setup SSHD config to allow root login
RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
RUN echo 'root:root' | chpasswd

# Setup SSH keys (required for SSH to work)
RUN ssh-keygen -A

# Expose the SSH port
EXPOSE 22

# Setup a permanent volume
VOLUME ["/mydata"]

# Run the SSH server
CMD ["/usr/sbin/sshd", "-D"]