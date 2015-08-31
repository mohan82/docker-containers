FROM debian:jessie
MAINTAINER Mohan Ambalavanan


ENV http_proxy=configure-me
ENV HTTP_PROXY=configure-me
ENV https_proxy=configure-me
ENV HTTPS_PROXY=configure-me
 

#Install ssh server
RUN apt-get update && apt-get install -y openssh-server

#Add ssh server used for  
RUN useradd ssh-user -d /home/ssh-user

RUN  mkdir -p /home/ssh-user


COPY jenkins_rsa /home/ssh-user/.ssh/id_rsa

RUN  chmod 600 /home/ssh-user/.ssh/id_rsa
 
RUN chown -R ssh-user:ssh-user /home/ssh-user

RUN mkdir -p /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
