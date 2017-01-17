FROM ubuntu

RUN apt-get update \
    && apt-get install -y tomcat8 wget \
    && chown tomcat8:tomcat8 /var/lib/tomcat8

WORKDIR /var/lib/tomcat8/webapps
RUN wget http://dl1.gs.sjts.co.jp/v4/download/files/4.6.3/gsession.war \
    && chown tomcat8:tomcat8 gsession.war

WORKDIR /
ADD run.sh /

EXPOSE 8080

CMD sh /run.sh
