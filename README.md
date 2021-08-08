## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Images/VNetwork_Diagram.png
![VNetwork_Diagram](https://user-images.githubusercontent.com/80998610/128619426-94759b73-3f70-46dd-87fa-a2a49b2219f7.PNG)


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting traffic to the network.


Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log data and system metrics.

The configuration details of each machine may be found below.

| Name     	| Function  	| IP Address 	| Operating System 	|
|----------	|-----------	|------------	|------------------	|
| Jump Box 	| Gateway   	| 10.0.0.4   	| Linux            	|
| Web-1    	| Webserver 	| 10.0.0.5   	| Linux            	|
| Web-2    	| Webserver 	| 10.0.0.6   	| Linux            	|
| Elk      	| ELK Stack 	| 10.1.0.4   	| Linux            	|

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 71.193.239.174


Machines within the network can only be accessed by the Jump Box (10.0.0.4).


A summary of the access policies in place can be found in the table below.

| Name     	| Publicly Accessible 	| Allowed IP Addresses 	|
|----------	|---------------------	|----------------------	|
| Jump Box 	| No                  	| 71.193.239.174       	|
| Web-1    	| No                  	| 10.0.0.4             	|
| Web-2    	| No                  	| 10.0.0.4             	|
| Elk      	| No                  	| 10.0.0.4             	|

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it saves time and reduces man made errors.

The playbook implements the following tasks:

- Install Docker
- Install python3-pip
- Install Docker Module
- Increase and use more Virtual Memory
- Download and launch Docker Elk container
- Enable Docker on Boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![DockerPS](https://user-images.githubusercontent.com/80998610/128619447-67ff0235-9b31-4377-b3c7-3051e86a827a.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

-10.0.0.5
-10.0.0.6

We have installed the following Beats on these machines:

- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:

- Filebeat monitors system logs such as audit logs and server logs. Metric beat monitors system and service statistics such as cpu usage orervice related data.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the ansible.cfg file to /etc/Ansible.
- Update the /etc/Ansible/hosts file to include the IPs of the webservers and ELK server. Then add ansible_python_interpreter=/usr/bin/python3.
- Run the playbook, and navigate to http://[your.VM.IP]:5601/app/kibana to check that the installation worked as expected.


- Which file is the playbook? Where do you copy it? Copy the install-elk.yml and filebeat-playbook.yml file to /etc/ansible 
- How do I specify which machine to install the ELK server on versus which to install Filebeat on? Change the host name in the playbook you want.
- Which URL do you navigate to in order to check that the ELK server is running? http://[your.VM.IP]:5601/app/kibana (my specific example would be http://52.250.2.96:5601/app/kibana)

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

- RUN PLAYBOOK: ansible-playbook <playbook name>
- UPDATE PLAYBOOK: nano <playbook name>
