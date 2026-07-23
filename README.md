# Azure Infrastructure Automation using Terraform

## Project Overview

This project demonstrates how to provision Azure infrastructure using **Terraform** and Infrastructure as Code (IaC) principles. The goal was to automate the deployment of essential Azure resources while following a modular and reusable project structure.

Instead of creating resources manually through the Azure Portal, this project uses Terraform modules to deploy and manage infrastructure consistently. It also includes Azure Managed Identity and Role-Based Access Control (RBAC) to implement secure access management.

---

## Architecture

The project deploys the following Azure resources:

* Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group (NSG)
* Network Interface (NIC)
* Linux Virtual Machine
* Storage Account
* Managed Identity
* Azure RBAC Role Assignment

Resource Flow:

```
Resource Group
│
├── Virtual Network
│     └── Subnet
│            ├── Network Security Group
│            └── Network Interface
│                    └── Linux Virtual Machine
│
├── Storage Account
│
└── Managed Identity
      └── RBAC Role Assignment
```

---

## Technologies Used

* Terraform
* Microsoft Azure
* Azure CLI
* Visual Studio Code
* Git & GitHub

Azure Services:

* Azure Resource Group
* Azure Virtual Network
* Azure Subnet
* Azure Network Security Group
* Azure Network Interface
* Azure Linux Virtual Machine
* Azure Storage Account
* Azure Managed Identity
* Azure Role-Based Access Control (RBAC)

---

## Prerequisites

Before running this project, make sure you have:

* An active Azure Subscription
* Terraform installed
* Azure CLI installed
* Git installed
* Visual Studio Code

Login to Azure:

```bash
az login
```

---

## Folder Structure

```
azure-terraform-infrastructure/
│
├── modules/
│   ├── resource_group/
│   ├── network/
│   ├── vm/
│   ├── storage/
│   ├── identity/
│   └── rbac/
│
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
└── .gitignore
```

---

## Deployment Steps

1. Clone the repository.

```bash
git clone https://github.com/H4tarakh/azure-terraform-infrastructure.git
```

2. Move into the project directory.

```bash
cd azure-terraform-infrastructure
```

3. Initialize Terraform.

```bash
terraform init
```

4. Validate the configuration.

```bash
terraform validate
```

5. Review the execution plan.

```bash
terraform plan
```

6. Deploy the infrastructure.

```bash
terraform apply
```

7. Remove the infrastructure when no longer needed.

```bash
terraform destroy
```

---

## Common Terraform Commands

| Command              | Purpose                        |
| -------------------- | ------------------------------ |
| `terraform init`     | Initialize the project         |
| `terraform fmt`      | Format Terraform files         |
| `terraform validate` | Validate the configuration     |
| `terraform plan`     | Preview infrastructure changes |
| `terraform apply`    | Deploy Azure resources         |
| `terraform destroy`  | Delete deployed resources      |
| `terraform output`   | Display output values          |

---

## Azure Resources Created

This project provisions the following Azure resources:

* Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group
* Network Interface
* Linux Virtual Machine
* Storage Account
* Storage Container
* Managed Identity
* Azure RBAC Role Assignment

---

## Screenshots

Screenshots of the deployed infrastructure can be found in the `images` folder.

Suggested screenshots:

* Azure Resource Group
* Virtual Machine
* Virtual Network
* Storage Account
* Network Security Group
* Managed Identity
* Terraform Apply Output

---

## Future Enhancements

Some improvements planned for future versions include:

* Configure a remote Terraform backend using Azure Storage.
* Integrate GitHub Actions for automated Terraform validation and deployment.
* Add Azure Key Vault for secret management.
* Deploy multiple virtual machines using reusable modules.
* Add Azure Load Balancer.
* Implement monitoring using Azure Monitor and Log Analytics.

---

## Adding CI/CD, Docker, Docker Hub, GitHub Action

# 🚀 End-to-End Azure DevOps Project using Terraform, GitHub Actions & Docker

## 📌 Project Overview

This project demonstrates an end-to-end DevOps CI/CD pipeline using **Terraform**, **GitHub Actions**, **Docker**, **Docker Hub**, and **Microsoft Azure**.

The infrastructure is provisioned using Terraform, the application is containerized with Docker, CI/CD pipelines are built with GitHub Actions, and the application is deployed on an Azure Virtual Machine.

---

# 🏗️ Architecture

```text
                Developer
                     │
                  Git Push
                     │
                     ▼
              GitHub Repository
                     │
      ┌──────────────┴──────────────┐
      │                             │
      ▼                             ▼
 Terraform CI/CD              Docker CI
      │                             │
Terraform Plan                 Build Image
Terraform Validate             Push Docker Hub
      │                             │
      └──────────────┬──────────────┘
                     ▼
                Azure Virtual Machine
                     │
                 Docker Engine
                     │
                     ▼
             Containerized Web App
                     │
                     ▼
                Live Website
```

---

# 🛠️ Technologies Used

- Microsoft Azure
- Terraform
- GitHub Actions
- Docker
- Docker Hub
- Ubuntu 22.04
- Git
- HTML
- Azure CLI
- SSH

---

# 📂 Project Structure

```text
azure-terraform-infrastructure/
│
├── .github/
│   └── workflows/
│       ├── terraform.yml
│       ├── docker.yml
│       └── deploy.yml
│
├── app/
│   ├── Dockerfile
│   └── index.html
│
├── modules/
│   ├── network/
│   ├── compute/
│   ├── storage/
│   └── identity/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── provider.tf
└── README.md
```

---

# ⚙️ Features

✅ Infrastructure as Code using Terraform

✅ Modular Terraform Architecture

✅ Azure Virtual Machine Deployment

✅ Dockerized Web Application

✅ GitHub Actions CI Pipeline

✅ GitHub Actions CD Pipeline

✅ Docker Hub Integration

✅ SSH-based Deployment

✅ Automated Infrastructure Validation

✅ Automated Docker Image Build & Push

---

# 🚀 CI Pipeline

Every push to the repository automatically performs:

- Checkout Source Code
- Terraform Format Check
- Terraform Initialization
- Terraform Validation
- Terraform Plan
- Docker Image Build
- Docker Image Push to Docker Hub

---

# 🚀 CD Pipeline

Deployment pipeline performs:

- Connect to Azure VM
- Pull Latest Docker Image
- Stop Existing Container
- Remove Existing Container
- Deploy Latest Container
- Start Web Application

---

# 🐳 Docker

Build Image

```bash
docker build -t hariom-devops:v1 .
```

Run Container

```bash
docker run -d -p 80:80 hariom-devops:v1
```

Push Image

```bash
docker push h4tarakh/hariom-devops:v1
```

---

# ☁️ Azure Resources

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Linux Virtual Machine
- Managed Identity
- Storage Account

---

# 📸 Screenshots

Add screenshots here after deployment.

Example:

```
images/
├── terraform-plan.png
├── github-actions.png
├── docker-hub.png
├── azure-vm.png
├── live-website.png
```

---

# 🎯 Learning Outcomes

This project demonstrates practical experience with:

- Infrastructure as Code
- Cloud Infrastructure Automation
- CI/CD Pipelines
- Docker Containerization
- Azure Administration
- GitHub Actions
- Linux Administration
- DevOps Best Practices

---

# 📈 Future Improvements

- Kubernetes Deployment (AKS)
- Azure Key Vault
- Azure Application Gateway
- Azure Monitor & Log Analytics
- Terraform Remote Backend
- SonarQube Integration
- OWASP Dependency Check
- Blue-Green Deployment
- Rolling Updates

---

# 👨‍💻 Author

**Hariom Tarakh**

Cloud & DevOps Engineer

GitHub: https://github.com/H4tarakh

LinkedIn: [linkedin/hariom-tarakh](https://www.linkedin.com/in/hariom-tarakh/)

---

