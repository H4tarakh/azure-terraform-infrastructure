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

## Author

**Hariom Tarakh**

* GitHub: https://github.com/H4tarakh

Thank you for checking out this project. If you found it useful, feel free to star the repository or share your feedback.

## Author
