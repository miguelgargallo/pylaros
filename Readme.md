# PylarOS

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

### Choice of Ubuntu 23.10

While selecting a base image for our Docker containers, it is crucial to factor in security vulnerabilities, apart from performance and feature set. In this case, Ubuntu 23.10 has been chosen over other Linux distributions for its relatively better security posture. Even though it is not completely free of vulnerabilities, the CVE-2023-29403 exploitability score for Ubuntu is at 1.8, which is on the lower end compared to some other distributions. Ubuntu's responsive maintenance cycle and community support further contribute to quicker patches and updates, making it a more secure option.

### Supported Versions

| Distro | Version     | Supported          | Latest             |
| ------ | ----------- | ------------------ | ------------------ |
| Ubuntu | 23.10       | ✅ | ✅ |
| Linux  | Arch        | ✅ | ❌                |
| Ubuntu | 22.04.3 LTS | ✅ | ❌                |

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

```bash
Package (32)          Old Version  New Version  Net Change  Download Size

core/binutils                      2.41-3        40.87 MiB       7.59 MiB
core/db                            6.2.32-1       7.16 MiB       1.33 MiB
core/db5.3                         5.3.28-4       6.52 MiB       1.20 MiB
extra/freetype2                    2.13.2-1       1.63 MiB       0.51 MiB
core/gc                            8.2.4-1        0.75 MiB       0.23 MiB
extra/graphite                     1:1.3.14-3     0.20 MiB       0.08 MiB
core/guile                         3.0.9-1       52.98 MiB       8.10 MiB
extra/harfbuzz                     8.2.2-1        3.88 MiB       0.98 MiB
core/jansson                       2.14-2         0.18 MiB       0.05 MiB
core/libisl                        0.26-1         5.71 MiB       0.85 MiB
core/libmpc                        1.3.1-1        0.17 MiB       0.08 MiB
extra/libpng                       1.6.40-2       0.57 MiB       0.24 MiB
core/pcre                          8.45-4         3.50 MiB       0.98 MiB
core/perl                          5.38.0-1      75.91 MiB      20.26 MiB
extra/perl-error                   0.17029-5      0.04 MiB       0.02 MiB
extra/perl-mailtools               2.21-7         0.10 MiB       0.06 MiB
extra/perl-timedate                2.33-5         0.08 MiB       0.03 MiB
core/python                        3.11.5-2      75.23 MiB      13.92 MiB
core/curl             8.4.0-2      8.4.0-2        0.00 MiB       1.20 MiB
extra/fontconfig                   2:2.14.2-1     1.09 MiB       0.36 MiB
core/gcc                           13.2.1-3     184.16 MiB      46.84 MiB
extra/git                          2.42.0-1      26.31 MiB       6.17 MiB
core/make                          4.4.1-2        1.67 MiB       0.51 MiB
core/nano             7.2-1        7.2-1          0.00 MiB
extra/neofetch                     7.1.0-2        0.33 MiB       0.08 MiB
extra/neovim          0.9.4-2      0.9.4-2        0.00 MiB
extra/ufw                          0.36.2-2       0.93 MiB       0.22 MiB
extra/unzip                        6.0-20         0.30 MiB       0.14 MiB
extra/vim             9.0.2010-1   9.0.2010-1     0.00 MiB
extra/wget                         1.21.4-1       3.18 MiB       0.71 MiB
extra/zip                          3.0-11         0.55 MiB       0.17 MiB
extra/zsh                          5.9-4          6.62 MiB       2.23 MiB

Total Download Size:   115.14 MiB
Total Installed Size:  535.09 MiB
Net Upgrade Size:      500.63 MiB
```

See the [.log](https://github.com/miguelgargallo/pylaros/blob/408bddc941a2f274702f3cc071b1f433212e3524/.log)

## Author

Developed by [Miguel Gargallo](https://github.com/itamaesan).

## Contributing

Contributions are welcome! If you find any issues or would like to contribute, please open an issue or a pull request.

## License

PylarOS is licensed under the PylarAI Creative ML FREE License, which is similar to the MIT license. Feel free to use, modify, and distribute as you see fit.
