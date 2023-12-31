# Use the base Arch Linux image
FROM archlinux:latest

# It's a good practice to label your Docker images
LABEL maintainer="your-email@example.com"

# Update the system and install necessary packages in a single RUN to reduce layers
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm sudo openssh && \
    # Clean up the cache to reduce image size
    pacman -Scc --noconfirm

# It's recommended to use a non-root user for security reasons
RUN useradd -m pylaros && \
    echo 'pylaros:pylaros' | chpasswd && \
    echo 'pylaros ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/pylaros

# Setup SSHD config to allow root login (consider if this is really necessary for security)
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    echo 'root:root' | chpasswd

# Setup SSH keys (required for SSH to work)
RUN ssh-keygen -A

# Expose the SSH port
EXPOSE 22

# Setup a permanent volume
VOLUME ["/mydata"]

# Run the SSH server
CMD ["/usr/sbin/sshd", "-D"]

# Use USER instruction to switch to a non-root user (if not requiring root access)
USER pylaros
