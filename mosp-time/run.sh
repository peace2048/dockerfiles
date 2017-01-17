#!/bin/bash

service postgresql start
service httpd start
service tomcat6 start

tail -f /var/log/httpd/access_log
