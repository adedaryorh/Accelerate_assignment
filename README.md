 # Project: Deploying infrac in Azure.

## Objective

Implement an application based on Azure, deployed as IaaS. For this the solution will consist of:

- A customizable number of virtual machines that will hold a self contained application.
- A load balancer.
- Good security practices.

## Prerequisites

- An Azure account. Check this [blog post](https://www.inkoop.io/blog/how-to-get-azure-api-credentials/) for the instructions to get the following credentials:
  - client_id
  - client_secret
  - subscription_id
- Azure [CLI](https://docs.microsoft.com/en-us/cli/azure/) installed either with powershell.
- An [Packer](https://www.packer.io) installed with powershell.
- An [Terraform](https://www.terraform.io) installed  with powershell.

## Instructions

kindly note that this project is sub-divided in two different subsidiaries **packer** for the image creation on UbuntuTLS, and **terrform** for the Terraform files. furthermore, the file **policies.json** is used to create the security policies for the Resourse project.
All the steps and the resulting output is shown in the **Log.md** file.
The following steps are all expected to be executed in the Azure CLI.

### 1. Security Policies

To install the security policies **cd** to the **project** directory and execute the following command:

```
az policy definition create --name "Tagging-Policy" --display-name "Require Tagging Policy" --description "This policy requires everybody to have tags" --rules policies.json --mode All
```

### 2. VM Image

Make sure a resource group named *PackerImage-rg* exists in Azure. This group is used to contain the VM image, optionally it can be modifined in the Packer configuration file.

Inorder to create the image used for the virtual machines:

- **cd** to **./packer**
- Edit the **server.json** file with the corresponding **client_id**, **client_secret**, and **subscription_id** type.
- Optionally adjust the **managed_image_resource_group_name** field with the resource group that will hold the image, and **packer_image** with the name of the image file. This group and file name must be the same as the **packer_image_rg** and **packer_image** names in Terraform's variables file.
- Then proceed with the commad below:

```
packer build server.json
```

### 3. Deploy Infrastructure

To create the desired infrastructure:

- **cd** to **./tf**
- Make sure to run **terraform init**.
- Edit the **vars.tf** file and adjust the desired variables.
  - **prefix** Will be common in the Azure's resource group.
  - **location** Azure region to deploy.
  - **username** and **password** for the VMs.
  - **packer_image_rg** the name of the resource group that holds the VMs image.
  - **packer_image** the name of the image.
  - **number_vms** number of virtual machines to create.
- Execute the following command to create the plan:

```
terraform plan -out solution.plan
```

- To apply the plan execute:

```
terraform apply "solution.plan"
```
 
