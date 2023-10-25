# Security Policy

### Final decision, choice of Arch Linux

While selecting a base image for our Docker containers, it is essential to consider not just security vulnerabilities but also performance, flexibility, and a lean environment. In this context, Arch Linux emerges as a superior choice over other Linux distributions. Despite its vulnerability, Arch offers a rolling release system, ensuring that users always have the latest software versions without the need for extensive upgrades. This results in a more streamlined, up-to-date, and performance-optimized system. Moreover, the Arch User Repository (AUR) provides a vast collection of user-submitted packages, further enhancing its adaptability and feature set. While the CVE-2023-29403 exploitability score for Arch might be a concern, it's worth noting that the Arch community is highly active, often leading to rapid patches and updates. This proactive approach, combined with the user-centric philosophy of Arch, ensures a balance between cutting-edge performance and security.


## Supported Versions

| Distro | Version     | Supported | Latest |
| ------ | ----------- | --------- | ------ |
| Linux  | Arch        | ✅         | ✅      |
| Ubuntu | 23.10       | ❌         | ✅      |
| Ubuntu | 22.04.3 LTS | ❌         | ❌      |

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
