FROM centos:6

RUN yum update -y \
    && yum install -y java-1.6.0-openjdk-devel tomcat6 tomcat6-webapps tomcat6-admin-webapps httpd postgresql-server curl

COPY proxy_ajp.conf /etc/httpd/conf.d/

RUN service postgresql initdb
COPY pg_hba.conf /var/lib/pgsql/data/

RUN chown postgres:postgres /var/lib/pgsql/data/pg_hba.conf \
    && service postgresql start \
    && su -c "psql -c \"alter role postgres with password 'postgres'\"" postgres

RUN curl -L -o /usr/share/tomcat6/webapps/time4.war https://ja.osdn.net/projects/mosp/downloads/62162/time4.war

ADD run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
