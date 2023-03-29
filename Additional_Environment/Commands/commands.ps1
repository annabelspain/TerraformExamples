# These commands can be run within any powershell terminal. These can be easily used within visual studio code to work with Terraform

# To get started with Terraform you need to install azure cli and the up the date version of terraform.
# [https://aka.ms/installazurecliwindows](https://aka.ms/installazurecliwindows)
# [Terraform v1.0.7 Binaries | HashiCorp Releases](https://releases.hashicorp.com/terraform/1.0.7/)
# [The Go Programming Language](https://go.dev/)

# Then a connection with Azure or AWS will need to be established. In this example we are connecting to Azure. 
# Log into the desired Azure account. A promt window will appear to place the details
az login 
# Clarify the correct subscription has been selected.
az account show
# If multiple subscriptions are shown, define the desired 
az account set --subscription "subscriptionId”


## Terraform commands ##
# To format Terraform code, cd into the working folder and run 
Terraform fmt

# Terraform Init: This task initializes the Terraform working directory.
Terraform init 

# Terraform Plan: This task generates an execution plan for Terraform.
Terraform plan

# Terraform Apply: This task applies the changes to the infrastructure.
Terraform apply

# Terraform Destroy: This task destroys the infrastructure.
Terraform destroy 

