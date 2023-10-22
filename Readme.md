# PylarOS

## PylarOS: A superset of Linux for devs

[Docker](https://hub.docker.com/repository/docker/itamaesan/pylaros/general) | [GitHub](https://github.com/itamaesanorg/pylaros) | [Twitter](https://twitter.com/MiguelGargallo) | [Support](https://cal.com/miguelgargallo/pylar-support?duration=45)

```bash
     ooooooooo.               oooo                            .oooooo.    .oooooo..o
     `888   `Y88.             `888                           d8P'  `Y8b  d8P'    `Y8
      888   .d88' oooo    ooo  888   .oooo.   oooo d8b      888      888 Y88bo.
      888ooo88P'   `88.  .8'   888  `P  )88b  `888""8P      888      888  `"Y8888o.
      888           `88..8'    888   .oP"888   888          888      888      `"Y88b
      888            `888'     888  d8(  888   888          `88b    d88' oo     .d8P
     o888o            .8'     o888o `Y888""8o d888b   ©      `Y8bood8P'  8""88888P'
                  .o..P'
                  `Y8P'

PylarOS: A superset of Linux for devs

  >> GitHub: https://github.com/itamaesanorg/pylaros
  >> Docker: https://hub.docker.com/r/itamaesan/pylaros
  >> Support: https://cal.com/miguelgargallo/pylar-support?duration=45
  >> Twitter: @MiguelGargallo (https://twitter.com/MiguelGargallo)
```

## Overview

PylarOS is a Linux environment built on Ubuntu 23.10 that comes pre-installed with a variety of development and utility tools. This Docker image is geared towards developers, system administrators, and anyone who needs a flexible, ready-to-go Linux environment.

## Features

  - Pre-Installed packages
  - The (almost) perfect Neovim setup for Node.js [by dreamsofcode YT](https://youtu.be/CVCBHHFXWNE?si=YjHUe9-OaZN41lsF)
  - Rust included
  - Node v20.8.1 && npm 10.2.1
  - Instant access with `ssh dev@localhost -p 2222`

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

Access:

```bash
ssh dev@localhost -p 2222
```

Use `dev` user, password is `dev`.

Support user is `hagrid`, do not touch it. For support: [Support](https://cal.com/miguelgargallo/pylar-support)

## Security Policy

### Choice of Arch Linux

While selecting a base image for our Docker containers, it is essential to consider not just security vulnerabilities but also performance, flexibility, and a lean environment. In this context, Arch Linux emerges as a superior choice over other Linux distributions. Despite its vulnerability, Arch offers a rolling release system, ensuring that users always have the latest software versions without the need for extensive upgrades. This results in a more streamlined, up-to-date, and performance-optimized system. Moreover, the Arch User Repository (AUR) provides a vast collection of user-submitted packages, further enhancing its adaptability and feature set. While the CVE-2023-29403 exploitability score for Arch might be a concern, it's worth noting that the Arch community is highly active, often leading to rapid patches and updates. This proactive approach, combined with the user-centric philosophy of Arch, ensures a balance between cutting-edge performance and security.

### Choice of Ubuntu 23.10

While selecting a base image for our Docker containers, it is crucial to factor in security vulnerabilities, apart from performance and feature set. In this case, Ubuntu 23.10 has been chosen over other Linux distributions for its relatively better security posture. Even though it is not completely free of vulnerabilities, the CVE-2023-29403 exploitability score for Ubuntu is at 1.8, which is on the lower end compared to some other distributions. Ubuntu's responsive maintenance cycle and community support further contribute to quicker patches and updates, making it a more secure option.

### Supported Versions

| Distro | PylarOS Version      | Version       | Supported | LTS | Latest | Planned for PylarOS LTS | Works on a NAS |
| ------ | -------------------- | ------------- | --------- | --- | ------ | ----------------------- | -------------- |
| Linux  | Mid 2023 (Oct)       | Arch          |     ✅    | ✅ |   ✅   |            ✅          |       ✅       |
| Ubuntu | Mid 2023 (Sept)      | 23.10         |     ✅    | ❌ |   ❌   |            ❌          |       ❓       |
| Ubuntu | Mid 2023 (Sept)      | 22.04.3 LTS   |     ✅    | ✅ |   ❌   |            ❓          |       ❓       |

#### Reporting a Vulnerability

##### Vulnerability Comparison Table

| Distribution | Creation Date | Last Updated | Source ID       | Exploitability Score | Exploits Found | CWE     | CVSS Score | Severity |
| ------------ | ------------- | ------------ | --------------- | -------------------- | -------------- | ------- | ---------- | -------- |
| Alpine       | 4 months ago  | 11 hours ago | CVE-2023-29403⁠ | -                    | -              | -       | N/A        | N/A      |
| Debian       | 4 months ago  | 11 hours ago | CVE-2023-29403⁠ | -                    | -              | -       | N/A        | N/A      |
| Ubuntu       | 4 months ago  | 10 hours ago | CVE-2023-29403⁠ | 1.8                  | -              | -       | 7.8        | Medium   |
| Golang       | 4 months ago  | 4 months ago | GO-2023-1840⁠   | -                    | -              | -       | N/A        | N/A      |
| Alma         | 3 months ago  | 3 months ago | ALSA-2023:3922⁠ | -                    | -              | -       | N/A        | Critical |
| Amazon       | 2 months ago  | 2 months ago | ALAS-2023-2163⁠ | -                    | -              | -       | N/A        | High     |
| Redhat       | 4 months ago  | 3 months ago | CVE-2023-29403⁠ | 1.8                  | -              | CWE-668 | 7.8        | High     |
| Rocky        | 3 months ago  | 3 months ago | RLSA-2023:3923⁠ | -                    | -              | -       | N/A        | Critical |
| Oracle       | 3 months ago  | 3 months ago | ELSA-2023-3922⁠ | -                    | -              | -       | N/A        | Critical |

## Packages

Transparency exercise, command executed by user: `dev`

```bash
sudo pacman -S make gcc nano vim neovim wget curl ufw zip unzip git neofetch fontconfig zsh
```

See the [package-transparency.log](package-transparency.log)

See the [.log](https://github.com/miguelgargallo/pylaros/blob/408bddc941a2f274702f3cc071b1f433212e3524/.log)

## Author

Developed by [Miguel Gargallo](https://github.com/itamaesan).

## Contributing

Contributions are welcome! If you find any issues or would like to contribute, please open an issue or a pull request.

## License

PylarOS is licensed under the PylarAI Creative ML FREE License, which is similar to the MIT license. Feel free to use, modify, and distribute as you see fit.
