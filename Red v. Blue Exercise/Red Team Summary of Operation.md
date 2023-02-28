# Red Team: Summary of Operations
## Table of Contents
- Exposed Services
- Critical Vulnerabilities
- Exploitation

## Exposed Services
Nmap scan results for each machine reveal the below services and OS details:

$ nmap 192.168.1.0-255
![RedTeam1](https://user-images.githubusercontent.com/93553144/222001432-2895c723-6900-4d42-befd-125cac93a079.png)


This scan identifies the services below as potential points of entry:
### Target 1
- PORT: 22 - ssh
- PORT: 80 - http
- PORT 111 - rpcbind
- PORT: 139 - netbios-ssn
- PORT: 445 - microsoft-ds
### Critical Vulnerabilities
The following vulnerabilities were identified on each target:
#### Target 1
- Open SSH
- User Enumeration via Wordpress - CVE-2009-2335 
- Weak Password Policy - CVE-521
- Unsalted Password Hashes - CVE-916
## Exploitation
The Red Team was able to penetrate Target 1 and retrieve the following confidential data:
### Target 1
- #### flag1.txt: b9bbcb33e11b80be759c4e844862482d
  - Exploit Used
    - Enumerate the wordpress site via the command: wpscan –url http://192.168.1.110/wordpress –enumerate u
![RedTeam2](https://user-images.githubusercontent.com/93553144/222002593-b5140f1f-70cd-4b69-bd85-b5e5f5614afc.png)
    - Users Michael and Steven were found.
    - ssh to the target1 machine by taking advantage of user michael’s easily guessed password.
    - Flag1 was found within /var/www/html using the command ‘cat service.html | grep flag’   
    ![RedTeam3](https://user-images.githubusercontent.com/93553144/222002718-3701b525-a6a2-4fdf-afce-4cc6609a56b4.png)


- #### flag2.txt: fcfd58dcdad9ab23faca6e9a36e581c
  - Exploit Used
    - Flag2 was found using the same methodology as Flag1.
    - Gaining access to the Target1 machine via ssh and user michael’s credentials then searching for the flag.
    - Flag placed within /var/www/

Flag3:
Exploit Used
Navigate to /var/www/html/wordpress and cat wp-config.php to gain the username and password for Raven’s MySQL username and password

Login in to MySQL using their credentials

flag3 can be found in wp_posts;

flag4: 
Obtain unprotected password hashes from  MySQL Database

Enter password hashes into a txt file and direct the john tool at the file to obtain user steven’s password.


User steven has sudo privileges for python, which can be exploited to gain root access using the following command:

flag4 can be found in the root home folder.


