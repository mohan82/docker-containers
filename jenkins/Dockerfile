FROM jenkins
MAINTAINER Mohan Ambalavanan

ENV http_proxy="configure me"
ENV HTTP_PROXY="configure me"
ENV https_proxy="configure me"
ENV HTTPS_PROXY="configure me"
COPY plugins.txt /tmp/plugins.txt
RUN /usr/local/bin/plugins.sh /tmp/plugins.txt
USER root
RUN apt-get update && apt-get install -y \
     maven\
     nodejs\
     npm


RUN npm install -g grunt bower

USER jenkins
ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
