# DevOps-LearningMode - Project 1
Project 1 - Multi tier web application stack

Host & Run on AWS Cloud

Lift & Shift strategy

Problems:

Complex Managment / Scale up-down strategy
Manual process
Time consuming

Solution:
Cloud Setup - PayAsYouGo - IAAS - Flexibility

AWS Services: 
EC2 Instances - for Tomcat, RabbitMQ, memcache, mysql
ELB - Load balancer
Autoscaling
S3/EFS Storage
Route 53 - Private DNS service

Objectives:

Flexible infra
no upfront cost
Modernize Effectively
IAAC


Diagram
![alt text](<Blank diagram (1).png>)


Setting up stack on AWS Cloud.

AWS Services:
 - Beanstalk (app server, nginx lb replacement, automation for vm scaling, storage).
 - RDS instance for Databases.
 - Elastic cache - instead of Memcached
 - Active MQ ainstead of Rabbit MQ
 - Route53
 - Cloudfront

Objectives:
 - Flexible infra
 - no upfront cost
 - IAAC, PASS, SAAS
a
Comparison:
 - Beanstalk --------- Tomcat EC2/VM
 - ELB in Beanstalk --------- TNginx LB/ELB
 - Autoscaling --------- None/Autoscaling.
 - EFS/S3  --------- NFS/S3/EFS
 - RDS --------- MYSQL VM /EC2

![alt text](<Screenshot from 2024-08-30 15-59-21.png>)
