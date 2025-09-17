# AWS VPC & EC2 Setup Task

## **Task Description**
The goal of this task is to:
1. Create a **VPC** with an Internet Gateway.
2. Create:
   - A **Public Subnet** with 256 IP addresses.
   - A **Private Subnet** with 256 IP addresses.
3. Configure a **Route Table** to connect the Internet Gateway to the public subnet.
4. Launch a **Linux EC2 Instance** in the public subnet.
5. Verify connection via SSH from the local machine.

## **Tech Stack**
- **AWS VPC**
- **AWS EC2**
- **Kali Linux (local machine for SSH)**

## **Steps Performed**

### **1. Created a VPC**
- CIDR Block: `10.0.0.0/16`
- This allows for multiple subnets, each capable of holding up to 65,536 IP addresses.

### **2. Created an Internet Gateway**
- Created and attached the Internet Gateway to the VPC.


### **3. Created Subnets**
- **Public Subnet**: `10.0.1.0/24` (256 IP addresses)
- **Private Subnet**: `10.0.2.0/24` (256 IP addresses)
- Enabled `Auto-assign Public IPv4` for the public subnet.

### **4. Configured Route Table**
- Created a Route Table for the public subnet:
  - Destination: `0.0.0.0/0`
  - Target: Internet Gateway
- Associated this Route Table with the Public Subnet.

### **5. Launched a Linux EC2 Instance**
- Chose **Ubuntu 24.04 LTS**.
- Instance type: `t2.micro` (Free Tier).
- Network settings:
  - VPC: My Custom VPC
  - Subnet: Public Subnet
  - Auto-assign Public IP: Enabled
- Uploaded **server.pem** key pair.


### **6. Connected to EC2 via SSH**
```bash
chmod 400 server.pem
ssh -i "server.pem" ubuntu@<public-ip>
