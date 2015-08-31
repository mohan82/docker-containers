FROM debian:jessie
MAINTAINER Mohan Ambalavanan

ENV http_proxy=configure-me
ENV HTTP_PROXY=configure-me
ENV https_proxy=configure-me
ENV HTTPS_PROXY=configure-me
 
RUN apt-get update && apt-get install -y openssh-server

RUN useradd ssh-user -d /home/ssh-user


RUN mkdir -p /home/ssh-user/.ssh

COPY jenkins_rsa.pub /tmp/

RUN  cat /tmp/jenkins_rsa.pub >> home/ssh-user/.ssh/authorized_keys
RUN echo   "Match User ssh-user \nPasswordAuthentication no" >>/home/ssh-user/.ssh/authorized_keys
RUN chown -R ssh-user:ssh-user /home/ssh-user
RUN mkdir -p /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]                                                                                                                                   

