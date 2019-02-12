yum install -y httpd
systemctl start httpd.service
firewall-cmd --permanent --add-service=http
firewall-cmd --reload
systemctl enable httpd.service

yum install -y mariadb-server
systemctl start mariadb
firewall-cmd --permanent --add-service=mysql
firewall-cmd --reload
systemctl enable mariadb.service

yum install php php-mysql
systemctl restart httpd.service
