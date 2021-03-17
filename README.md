Continuous Integration and Continuous Deployment of a user management application:

in Jenkins system: 

you have to install ansible for deploying this project in the remote system. and in /etc/ansible/hosts you should add this line 
remote ansible_host=remote ansible_user=root ansible_ssh_pass=your_password ( i have used RedHat distro for deploying this project .so, my user was root)
and also you need to add a dns entry for your 'remote' system in /etc/hosts file.

in remote system:

in this system ,you have to install docker,docker-compose. after that, you should log in your docker hub account. otherwise, you cann't pull any image . 

in Jenkins :

I have created two jobs. one is the Integration job. this job was used to pull files and folders from GitHub, another is the Deployment Job which was used for deploying project in the remote system.

1. Integration Process:

![image](https://user-images.githubusercontent.com/55279991/111435765-61422380-872b-11eb-85ac-72fcfb517e9c.png)
![image](https://user-images.githubusercontent.com/55279991/111435976-a36b6500-872b-11eb-8d47-e75f4f0f7965.png)

since , i want auto CI/CD process . so, i needed to add poll SCM.

![image](https://user-images.githubusercontent.com/55279991/111436303-065cfc00-872c-11eb-8fe2-7c1839f96ee4.png)

after that, i needed to add second job which is my Deploymnet job . 

![image](https://user-images.githubusercontent.com/55279991/111436402-22f93400-872c-11eb-8c87-2ac2bfd6e564.png)

2. Deployment Process: 

in this job , i had to execute some shell commmands.

![image](https://user-images.githubusercontent.com/55279991/111436781-926f2380-872c-11eb-8459-725d6ca30934.png)

3. Pipeline View:

![3](https://user-images.githubusercontent.com/55279991/111437809-b67f3480-872d-11eb-8b87-9489fe4fd6ac.png)

now you can see that, my CI/CD process is sucessfully completed.

Display project in Web browser:

for output ,please type your_remote_system_ip:5000

![2](https://user-images.githubusercontent.com/55279991/111438098-0e1da000-872e-11eb-8ec4-9b2a9b480b41.png)







 
