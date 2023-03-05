## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!Infrastructure-Example/Diagrams/Network Diagram

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - Infrastructure-Example/Ansible/install-elk.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly accesible, in addition to restricting traffic to the network.
- Load balancers protect the availability of the webservers, redirecting traffic in the event of crowding or a downed server. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the applications and system logs.
- Filebeat monitors logs.
- Metricbeat records metrics from users.

The configuration details of each machine may be found below.

| Name                 | Function   | IP Address | OS    |
|----------------------|------------|------------|-------|
| Jump-Box Provisioner | Gateway    | 10.0.0.4   | Linux |
| Web-1                | Webserver  | 10.0.0.5   | Linux |
| Web-2                | Webserver  | 10.0.0.6   | Linux |
| Web-3                | Webserver  | 10.0.0.8   | Linux |
| ELK                  | ELK Server | 10.1.0.4   | Linux |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-box Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 76.171.176.66 

Machines within the network can only be accessed by Jump-Box Provisioner.
- Jump-Box Provisioner 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible? | Allowed IP Addresses  |
|----------------------|----------------------|-----------------------|
| Jump-Box Provisioner | Yes                  | Workstation Public IP |
| Web-1                | No                   | 10.0.0.5              |
| Web-2                | No                   | 10.0.0.6              |
| Web-3                | No                   | 10.0.0.8              |
| ELK                  | Yes                  | Workstation Public IP |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Ansible Configurations will apply to all child machines.

The playbook implements the following tasks:
- Edit the sysctl.conf file to alter available memory.
- Apt install docker.io.
- Apt install pip3 and docker python module.
- Download and Launch the Elk container.
- Enable the Docker service.

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

!README/Images/Successful docker ps.png

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5, 10.0.0.6, 10.0.0.8

We have installed the following Beats on these machines:
- Filebeat and Metricbeat

These Beats allow us to collect the following information from each machine:
- Metricbeat allows us to gather statistics on web users such as what country they're logging in from and what OS they're using. Filebeat allows us to gather information on logs, such as ssh and login attempts

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the Configuration File file to webservers and ELK server.
- Update the host file to include the IP addresses of the machines you want to run the playbook on.
- Run the playbook, and navigate to Kibana to check that the installation worked as expected.

- Copy the file "Install-ELK.yml" to the /etc/ansible directory on the Web VMs
- Update the hosts file to make Ansible run the playbook on a specific machine
- Update the hosts field in the playbook to specify which machine to install the ELK server on versus which to install Filebeat on
- The URL you navigate to in order to check that the ELK server is running: http://[ELK External IP Address]:5601/app/kibana#/home

