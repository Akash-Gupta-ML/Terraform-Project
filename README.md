# AWS VPC and EC2 Infrastructure with Terraform and Ansible

## Overview

This project sets up an AWS infrastructure using Terraform and Ansible to create a environment for hosting a web server.

## Components

- **AWS VPC**: 
  - **CIDR Block**: Defines the IP address range for the VPC.
  - **Public Subnets**: Allows internet access to resources.
  - **Internet Gateway**: Connects the VPC to the internet.
  - **Route Tables**: Manages network traffic routing.

- **Security Groups**:
  - Controls inbound and outbound traffic for EC2 instances.
  - Configured to allow HTTP (port 80) and SSH (port 22) traffic.

- **EC2 Instance**:
  - Virtual server running within the public subnet.
  - Hosts a web server for serving HTTP requests.

- **Ansible Configuration**:
  - **Apache Web Server**: Installed and configured on the EC2 instance.
  - **Sample Web Page**: Deployed to the web server’s root directory.

## Architecture

1. **VPC**: Contains the public subnets.
2. **Public Subnets**: Hosts the EC2 instance.
3. **Internet Gateway**: Provides internet access.
4. **EC2 Instance**: Runs the web server.
5. **Security Group**: Manages access rules for the EC2 instance.

## Yum Configuration Issue
If the yum configuration is problematic, Ansible will handle the fixes as part of its tasks.
