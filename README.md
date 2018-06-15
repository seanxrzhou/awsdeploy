# awsdeploy
Build IAAS environment on AWS and deploy applications automatically

## Deploy WAS v8 on AWS EC2
* Upload was8.zip, application ear, derby database archive on AWS S3
* Upload the AWS CloudFormation template was8solo.json and was8solo.sh on AWS S3
* Create a new stack with the template was8solo.json

### How to build the WAS8 installation archive

* Add the IBM repository https://www.ibm.com/software/repositorymanager/V8WASDeveloperILAN to IBM Installation Manager v1.8
* Install WebSphere Application Server v8 for developer
* Use the profile manager to create AppSrv01 profile with server1
* Start server1 and from admin console enable the drop-in auto deployment
* zip the whole installation directory

## Use Cases
* Deploy the WAS8 and application into one EC2 instance on an existing VPC
* Create a new VPC and LB, and then deploy two EC2 instances with the WAS8 and application
* Create a new VPC and auto scaling solution for EC2 instances with the WAS8 and application
