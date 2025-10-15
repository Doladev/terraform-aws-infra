#!/bin/bash
yum update -y

# Install Docker
amazon-linux-extras install docker -y
service docker start
usermod -a -G docker ec2-user

# Install .NET (SDK 7 for example)
rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
yum install -y dotnet-sdk-7.0

# Optional: Start a sample container or app
docker run -d -p 80:80 nginx
