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

<!-- A table with disccuss, issues and support calcom -->

| New Features                                                           | Support & Issues                                                                            | Tailored Support                                                        |
| ---------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| [Go ahead](https://github.com/miguelgargallo/pylaros/discussions)      | [Let's see what happens](https://github.com/miguelgargallo/pylaros/pulls)                   | [As you wish](https://cal.com/miguelgargallo/pylar-support?duration=45) |
| If you want to add a new feature, please open an issue and we will it. | If you find any issues or would like to contribute, please open an issue or a pull request. | If you need premium support, please book a meeting.                     |


## Overview

PylarOS is a Linux environment built on Ubuntu 23.10 that comes pre-installed with a variety of development and utility tools. This Docker image is geared towards developers, system administrators, and anyone who needs a flexible, ready-to-go Linux environment.


## Upcoming Features
We are working so hard to add the following features:

  - Databases included: MongoDB, Redis, MySQL, SQLite


## Features

  - Run docker & play. No need to install anything on your machine
  - Arch Linux with ssh access on a Docker container `ssh dev@localhost -p 2222`
  - NVChad with [The (almost) perfect Neovim setup for Node.js](https://youtu.be/CVCBHHFXWNE?si=YjHUe9-OaZN41lsF)
  - Node v20.8.1 && npm 10.2.1
  - Rust
  - Python
  - Lazygit
  - Postgres
  - Pre-Installed packages


## Table of versions of languages and tools

| Language | Version | Notes                  |
| -------- | ------- | ---------------------- |
| rust     | 1.73.0  | (cc66ad468 2023-10-03) |
| python   | 3.11.5  |                        |

| Tool     | Version | Notes                                        |
| -------- | ------- | -------------------------------------------- |
| node     | 20.9.0  | LTS                                          |
| npm      | 10.2.1  |                                              |
| pnpm     | 8.9.2   |                                              |
| yarn     | 1.22.19 |                                              |
| postgres | 15.4    | (PostgreSQL)                                 |
| nano     | 7.2     | 2023                                         |
| vim      | 9.0     | (2022 Jun 28, compiled Oct 11 2023 19:17:46) |
| neovim   | 0.9.4   | LuaJIT 2.1.1697887905                        |
| lazygit  | 0.40.2  | build date=2023-08-12T17:47:33Z              |
| make     | 4.4.1   |                                              |
| gcc      | 13.2.1  | 20230801                                     |
| wget     | 1.21.4  | built on linux-gnu                           |
| curl     | 8.4.0   | 2023-10-11                                   |
| ufw      | 0.36    |                                              |
| iptables | 1.8.9   | (legacy)                                     |


### Pre-Installed Packages

- **Special Tools**: `lazygit`, `nvchad`
- **Node Package Manager**: `npm`, `pnpm`, `yarn`
- **Text Editors**: `nano`, `vim`, `neovim`
- **Development Tools**: `make`, `gcc`
- **Networking**: `wget`, `curl`, `iptables`
- **Utilities**: `zip`, `unzip`, `git`, `neofetch`
- **Fonts and Shell**: `fontconfig`, `zsh`
- **Databases**: `Postgres`


## Databases

There is a Postgres ready, here is the credentials:

| User       | Password   | Database   |
| ---------- | ---------- | ---------- |
| postgresql | postgresql | postgresql |


## Use-Cases

| Use-Case        | Description                                                                                                                                     | Included Packages                                                      |
| --------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| Developers      | Perfect for developers who want a consistent and equipped environment for coding, version control, and package management.                      | `neovim`, `node`, `pnpm`, `rust`, `python`, `lazygit`, `nvchad`, `git` |
| Sysadmins       | Ideal for sysadmins looking for a containerized solution to perform routine tasks like file operations, network monitoring, and system updates. | `vim`, `wget`, `curl`, `npm`, `ufw`, `zip`, `unzip`, `git`             |
| General Users   | Useful for general users who need a Linux environment for various tasks and prefer pre-installed utilities to facilitate their work.            | `nano`, `wget`, `curl`, `zip`, `unzip`                                 |
| Writters        | Perfect for writters who want a consistent and equipped environment for writing, version control, and package management.                       | `nano`, `vim`, `neovim`, `nvchad`, `git`                               |
| Data Scientists | Useful for data scientists who need a Linux environment for various tasks and prefer pre-installed utilities to facilitate their work.          | `python`, `nano`, `wget`, `curl`, `zip`, `unzip`                       |

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

### Final decision, choice of Arch Linux

While selecting a base image for our Docker containers, it is essential to consider not just security vulnerabilities but also performance, flexibility, and a lean environment. In this context, Arch Linux emerges as a superior choice over other Linux distributions. Despite its vulnerability, Arch offers a rolling release system, ensuring that users always have the latest software versions without the need for extensive upgrades. This results in a more streamlined, up-to-date, and performance-optimized system. Moreover, the Arch User Repository (AUR) provides a vast collection of user-submitted packages, further enhancing its adaptability and feature set. While the CVE-2023-29403 exploitability score for Arch might be a concern, it's worth noting that the Arch community is highly active, often leading to rapid patches and updates. This proactive approach, combined with the user-centric philosophy of Arch, ensures a balance between cutting-edge performance and security.


## Packages

Transparency exercise, command executed by user: `dev`

```bash
sudo pacman -S make gcc nano vim neovim wget curl ufw zip unzip git neofetch fontconfig zsh
```

See the [package-transparency.log](https://github.com/miguelgargallo/pylaros/blob/408bddc941a2f274702f3cc071b1f433212e3524/.log)

See the [.log](https://github.com/miguelgargallo/pylaros/blob/408bddc941a2f274702f3cc071b1f433212e3524/.log)


## Author

Developed by [Miguel Gargallo](https://github.com/itamaesan).


## Contributing

Contributions are welcome! If you find any issues or would like to contribute, please open an issue or a pull request.


## License

PylarOS is licensed under the PylarAI Creative ML FREE License, which is similar to the MIT license. Feel free to use, modify, and distribute as you see fit.
