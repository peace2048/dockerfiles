FROM centos:7

RUN yum update -y \
    && yum install -y wget \
    && wget https://ja.osdn.net/projects/aipo/downloads/64847/aipo-8.1.1-linux-x64.tar.gz \
    && tar -zxvf aipo-8.1.1-linux-x64.tar.gz

RUN yum install -y make sudo gcc nmap lsof unzip readline-devel zlib-devel \
    && cd aipo-8.1.1-linux-x64 \
    && sh installer.sh /usr/local/aipo

RUN yum install -y iproute \
    && sed -i -e "s/\`lsof -i:/\`ss -natl \| grep /" /usr/local/aipo/bin/func.conf \
    && echo "tail -f /usr/local/aipo/tomcat/logs/startup.log" >> /usr/local/aipo/bin/startup.sh \
    && rm -rf aipo-8.1.1-linux-x64*

EXPOSE 80

CMD /usr/local/aipo/bin/startup.sh
