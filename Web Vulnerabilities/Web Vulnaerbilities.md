## In this exercise I gained experience with many potential web vulnerabilities that have been used to gather sensitive information in the past.


### Command Injection
- In this part I was able to enter an IP address into a search field that ran against a Replicants Webserver. By adding additional commands, I was able to gather sensitive information.

![image](https://user-images.githubusercontent.com/93553144/222941013-f7874e1b-99fe-4c6c-a11a-b26f61e2682f.png)


![image](https://user-images.githubusercontent.com/93553144/222941160-eb9a43ff-ac83-4367-a16c-5145d4908413.png)

- Risks can be mitigated here by requiring input validation to limit the number of files accessible by users. Additionally, running web servers on specific accounts that have limited permissions will decrease the possibility of sensitive information being accessed.

### Brute Force
- In this activity I was granted a list of administrators and breached passwords and utilized the web application tool Burp Suite (specifically the intruder feature) in order to determine if any of the admin accounts were vulnerable to a brute force attack on the established web application.

![image](https://user-images.githubusercontent.com/93553144/222941394-93620590-d596-4591-b854-6866ed7f429d.png)

- Unfortunately the screen shot resolution is not ideal, but in this example I was able to cross the list of admins with the list of leaked passwords and finf the correct combination to gain access to an account.
- Mitigation strategies for this are simple, requiring complex password and usernames. Account lockouts are also very useful defenses against brute force attacks.


### BeEF
- In this activity I utilized the BeEF application to hook a relevant browser and pull up a list of available exploits. In this case a false login prompt was pushed to the users browser.

![image](https://user-images.githubusercontent.com/93553144/222941577-1790cef2-c795-459f-b13f-abd1a6332521.png)

- Mitigation strategies for this attack include education strategies to teach employees the dangers of falling for sudden pop-ups. Pop-up blockers are also a very effect counter to these kinds of prompt attacks.
