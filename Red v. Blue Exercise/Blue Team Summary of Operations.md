# Blue Team: Summary of Operations
## Table of Contents
- Network Topology
- Description of Targets
- Monitoring the Targets
- Patterns of Traffic & Behavior
- Suggestions for Going Further

## Network Topology

The following machines were identified on the network:

- Kali
  - Operating System: Kali 5.4.0
  - Purpose: Pen Testing
  - IP Address: 192.168.1.90

- ELK
  - Operating System: Ubuntu 18.04
  - Purpose: Logging
  - IP Address: 192.168.1.100

- Capstone
  - Operating System: Ubuntu 18.04
  - Purpose: Web Server
  - IP Address: 192.168.1.105

- Target 1
  - Operating System: Debian GNU/Linux 8
  - Purpose: Web Server
  - IP Address: 192.168.1.110

## Description of Targets

The target of this attack was: Target 1 192.168.1.110

Target 1 is an Apache web server and has SSH enabled, so ports 80 and 22 are possible ports of entry for attackers. As such, the following alerts have been implemented:


## Monitoring the Targets

Traffic to these services should be carefully monitored. To this end, we have implemented the alerts below:

### Excessive HTTP Errors

#### Alert 1 is implemented as follows:
- Metric: Count of http.response.status_code
- Threshold: Above 400 in 5 Minutes
- Vulnerability Mitigated: Brute Force Attack
- Reliability: I would rate this alert at high reliability. This alert will only set off if a very large amount of errors are recorded, indicating someone has failed login over 400 times in 5 minutes.


### CPU Usage Monitor

#### Alert 2 is implemented as follows:
- Metric:Max of system.process.cpu.total.pct
- Threshold: Over 0.5 in 5 Minutes
- Vulnerability Mitigated:  Malware using excessive CPU
- Reliability: Medium reliability, there may be inconsequential spikes in CPU usage that could send false alerts. This still allows for in-house monitoring of cpu metrics though.


### HTTP Request Size Monitor

#### Alert 3 is implemented as follows:
- Metric: Sum of http.request,bytes
- Threshold: Above 3500 in 1 Minute
- Vulnerability Mitigated: Port Scanning
- Reliability: This report is fairly reliable. Port scanning happens 24/7 but this will allow us to identify when someone has taken excessive interest in our network by setting the threshold higher.
