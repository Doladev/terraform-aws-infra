#!/bin/bash
yum update -y

# Install AWS CLI and .NET
yum install -y unzip
rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
yum install -y dotnet-sdk-7.0

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Download app files from S3 (assuming you've uploaded to S3 manually or via CI/CD)
aws s3 cp s3://your-bucket-name/ /var/dotnetapp/ --recursive

# Run the app (e.g., ASP.NET Core)
cd /var/dotnetapp
dotnet YourApp.dll
