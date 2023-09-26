# PylarOS

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

## Security Policy

### Choice of Ubuntu 23.10

While selecting a base image for our Docker containers, it is crucial to factor in security vulnerabilities, apart from performance and feature set. In this case, Ubuntu 23.10 has been chosen over other Linux distributions for its relatively better security posture. Even though it is not completely free of vulnerabilities, the CVE-2023-29403 exploitability score for Ubuntu is at 1.8, which is on the lower end compared to some other distributions. Ubuntu's responsive maintenance cycle and community support further contribute to quicker patches and updates, making it a more secure option.

### Supported Versions

| Distro | Version     | Supported | Latest |
| ------ | ----------- | --------- | ------ |
| Ubuntu | 23.10       | ✅         | ✅      |
| Linux  | Arch        | ✅         | ❌      |
| Ubuntu | 22.04.3 LTS | ✅         | ❌      |

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

## Author

Developed by [Miguel Gargallo](https://github.com/itamaesan).

## Contributing

Contributions are welcome! If you find any issues or would like to contribute, please open an issue or a pull request.

## License

PylarOS is licensed under the PylarAI Creative ML FREE License, which is similar to the MIT license. Feel free to use, modify, and distribute as you see fit.
