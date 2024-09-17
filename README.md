# AWS VPC and EC2 Infrastructure with Terraform and Ansible

## Project Overview

This project demonstrates how to set up a scalable and secure cloud infrastructure using Terraform and Ansible on Amazon Web Services (AWS). The goal is to provision a Virtual Private Cloud (VPC) with associated networking components and deploy a web server on an EC2 instance using configuration management tools.

## Components

### 1. **AWS VPC (Virtual Private Cloud)**

A VPC is a logically isolated network within the AWS cloud where you can define and control a virtualized network environment. In this project, the VPC is configured to host an EC2 instance, allowing for secure communication and resource management.

- **CIDR Block**: A range of IP addresses allocated to the VPC.
- **Public Subnets**: Subnetworks within the VPC that are exposed to the internet, allowing resources like EC2 instances to be accessible from outside the VPC.
- **Internet Gateway**: A gateway attached to the VPC that provides a route to the internet for resources within the public subnets.
- **Route Tables**: Rules that direct network traffic within the VPC. In this project, route tables are configured to route traffic between subnets and the internet.

### 2. **Security Groups**

Security groups act as virtual firewalls for EC2 instances, controlling inbound and outbound traffic. This project includes security group configurations to allow specific types of traffic to and from the EC2 instance, such as HTTP (port 80) and SSH (port 22).

### 3. **EC2 Instance**

An EC2 instance is a virtual server in the AWS cloud used to run applications. In this project, an EC2 instance is launched within the public subnet of the VPC. This instance is intended to host a web server that serves HTTP requests.

### 4. **Ansible Configuration**

Ansible is used for configuration management and application deployment. The Ansible playbooks in this project automate the process of configuring the EC2 instance by:

- **Installing Apache Web Server**: The playbook ensures that the Apache web server is installed and running on the EC2 instance.
- **Deploying a Sample Web Page**: A sample HTML file is deployed to the Apache server's root directory, allowing users to access a basic web page hosted on the EC2 instance.

## Architecture Diagram

The architecture for this project involves:

1. **VPC**: Hosts the public subnets.
2. **Public Subnets**: Where the EC2 instance is launched.
3. **Internet Gateway**: Connects the VPC to the internet.
4. **EC2 Instance**: Hosts the web server and serves HTTP requests.
5. **Security Group**: Controls access to the EC2 instance.
