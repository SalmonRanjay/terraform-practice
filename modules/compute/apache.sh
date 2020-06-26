#!/bin/bash

yum install httpd -y

systemctl start hppd
systemctl enable httpd

echo "<h1> Java Home App" > /var/www/html/index.html