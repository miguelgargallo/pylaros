# PylarOS

## Docker

[Availble for free at Docker Hub + Advanced image analysis Scout](https://hub.docker.com/r/itamaesan/pylaros).

## Overview

PylarOS is a Linux environment built on Arch Linux that comes pre-installed with a variety of development and utility tools. This Docker image is geared towards developers, system administrators, and anyone who needs a flexible, ready-to-go Linux environment.

## Features

### Pre-Installed Packages
- **Development Tools**: `make`, `gcc`
- **Text Editors**: `nano`, `vim`, `neovim`
- **Networking**: `wget`, `curl`, `ufw`
- **Utilities**: `zip`, `unzip`, `git`, `neofetch`
- **Fonts and Shell**: `fontconfig`, `zsh`

## Use-Cases

#### Developers
Perfect for developers who want a consistent and equipped environment for coding, version control, and package management.

#### System Administrators
Ideal for sysadmins looking for a containerized solution to perform routine tasks like file operations, network monitoring, and system updates.

#### General Users
Useful for general users who need a Linux environment for various tasks and prefer pre-installed utilities to facilitate their work.

## Quick Start

To pull the Docker image:

```bash
docker pull itamaesan/pylaros:latest
```

To run a container:

```bash
docker run -it --rm itamaesan/pylaros:latest /bin/bash
```

## Build Locally

To build the image locally:

```bash
docker build -t itamaesan/pylaros:latest .
```

## License

PylarOS is licensed under the PylarAI Creative ML FREE License, which is similar to the MIT license. Feel free to use, modify, and distribute as you see fit.

## Author

Developed by [Miguel Gargallo](https://github.com/itamaesan).

## Contributing

Contributions are welcome! If you find any issues or would like to contribute, please open an issue or a pull request.
