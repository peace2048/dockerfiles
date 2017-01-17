FROM ochiai/aipo

RUN cp -ar /usr/local/aipo/tomcat/webapps/ROOT /usr/local/aipo/tomcat/webapps/aipo \
    && sed -i -e "s/\/ROOT\//\/aipo\//" /usr/local/aipo/bin/startup.sh
