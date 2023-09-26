# Security Policy

## Choice of Ubuntu 23.10

While selecting a base image for our Docker containers, it is crucial to factor in security vulnerabilities, apart from performance and feature set. In this case, Ubuntu 23.10 has been chosen over other Linux distributions for its relatively better security posture. Even though it is not completely free of vulnerabilities, the CVE-2023-29403 exploitability score for Ubuntu is at 1.8, which is on the lower end compared to some other distributions. Ubuntu's responsive maintenance cycle and community support further contribute to quicker patches and updates, making it a more secure option.

## Supported Versions

| Distro | Version     | Supported          | Latest             |
| ------ | ----------- | ------------------ | ------------------ |
| Ubuntu | 23.10       | :white_check_mark: | :white_check_mark: |
| Linux  | Arch        | :white_check_mark: |                    |
| Ubuntu | 22.04.3 LTS | :white_check_mark: |                    |

### Reporting a Vulnerability

#### Vulnerability Comparison Table

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
