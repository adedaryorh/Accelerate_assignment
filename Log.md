# Project Log

This file contains the steps/command that have been executed to complete this project.

## Policy definition

See the file **./policies.json**. The only required policy is to enforce the existence of at least one tag.
Code to apply the policy:

```
az policy definition create --name "Tagging-Policy" --display-name "Require Tagging Policy" --description "This policy requires everybody to have tags" --rules policies.json --mode All
```

See [this question](https://knowledge.udacity.com/questions/525456).

Resulting output:

```
project  az policy definition create --name "Tagging-Policy" --display-name "Require Tagging Policy" --description "This policy requires everybody to have tags" --rules policies.json --mode All
```
\Users\HP\devops-project\udacity-azure> az policy definition create --name LinuxPasswordPolicy --rules policies.json --display-name RequireTaggingPolicy
{
  "description": null,
  "displayName": "RequireTaggingPolicy",
  "id": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/Microsoft.Authorization/policyDefinitions/LinuxPasswordPolicy",
  "metadata": {
    "createdBy": "db5ec109-b94a-4558-8fc0-6d16624c569c",
    "createdOn": "2022-03-24T14:09:41.1873287Z",
    "updatedBy": "db5ec109-b94a-4558-8fc0-6d16624c569c",
    "updatedOn": "2022-03-25T08:40:11.5518776Z"
  },
  "mode": "Indexed",
  "name": "LinuxPasswordPolicy",
  "parameters": null,
  "policyRule": {
    "if": {
      "exists": false,
      "field": "tags"
    },
    "then": {
      "effect": "deny"
    }
  },
  "policyType": "Custom",
  "systemData": {
    "createdAt": "2022-03-24T14:09:41.163312+00:00",
    "createdBy": "adedaryorh@gmail.com",
    "createdByType": "User",
    "lastModifiedAt": "2022-03-25T08:40:11.477481+00:00",
    "lastModifiedBy": "adedaryorh@gmail.com",
    "lastModifiedByType": "User"
  },
  "type": "Microsoft.Authorization/policyDefinitions"
}
```
C:\Users\HP\devops-project\udacity-azure> az policy definition create --name LinuxPasswordPolicy --rules policies.json
{
  "description": null,
  "displayName": null,
  "id": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/Microsoft.Authorization/policyDefinitions/LinuxPasswordPolicy",
  "metadata": {
    "createdBy": "db5ec109-b94a-4558-8fc0-6d16624c569c",
    "createdOn": "2022-03-24T14:09:41.1873287Z",
    "updatedBy": "db5ec109-b94a-4558-8fc0-6d16624c569c",
    "updatedOn": "2022-03-25T08:28:13.3777475Z"
  },
  "mode": "Indexed",
  "name": "LinuxPasswordPolicy",
  "parameters": null,
  "policyRule": {
    "if": {
      "exists": false,
      "field": "tags"
    },
    "then": {
      "effect": "deny"
    }
  },
  "policyType": "Custom",
  "systemData": {
    "createdAt": "2022-03-24T14:09:41.163312+00:00",
    "createdBy": "adedaryorh@gmail.com",
    "createdByType": "User",
    "lastModifiedAt": "2022-03-25T08:28:13.233214+00:00",
    "lastModifiedBy": "adedaryorh@gmail.com",
    "lastModifiedByType": "User"
  },
  "type": "Microsoft.Authorization/policyDefinitions"

C:\Users\HP\devops-project\udacity-azure> az policy assignment create --policy LinuxPasswordPolicy
{
  "description": null,
  "displayName": null,
  "enforcementMode": "Default",
  "id": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/Microsoft.Authorization/policyAssignments/XfhuybaITZWxIPDmSnyo4A",
  "identity": null,
  "location": null,
  "metadata": {
    "createdBy": "db5ec109-b94a-4558-8fc0-6d16624c569c",
    "createdOn": "2022-03-25T08:29:54.3212955Z",
    "updatedBy": null,
    "updatedOn": null
  },
  "name": "XfhuybaITZWxIPDmSnyo4A",
  "nonComplianceMessages": null,
  "notScopes": null,
  "parameters": null,
  "policyDefinitionId": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/Microsoft.Authorization/policyDefinitions/LinuxPasswordPolicy",
  "scope": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1",
  "systemData": {
    "createdAt": "2022-03-25T08:29:54.290004+00:00",
    "createdBy": "adedaryorh@gmail.com",
    "createdByType": "User",
    "lastModifiedAt": "2022-03-25T08:29:54.290004+00:00",
    "lastModifiedBy": "adedaryorh@gmail.com",
    "lastModifiedByType": "User"
  },
  "type": "Microsoft.Authorization/policyAssignments"


project  az policy assignment list

C:\Users\HP\devops-project\udacity-azure> az policy assignment create --policy LinuxPasswordPolicy
{
  "description": null,
  "displayName": null,
  "enforcementMode": "Default",
  "id": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/Microsoft.Authorization/policyAssignments/XfhuybaITZWxIPDmSnyo4A",
  "identity": null,
  "location": null,
  "metadata": {
    "createdBy": "db5ec109-b94a-4558-8fc0-6d16624c569c",
    "createdOn": "2022-03-25T08:29:54.3212955Z",
    "updatedBy": null,
    "updatedOn": null
  },
  "name": "XfhuybaITZWxIPDmSnyo4A",
  "nonComplianceMessages": null,
  "notScopes": null,
  "parameters": null,
  "policyDefinitionId": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/Microsoft.Authorization/policyDefinitions/LinuxPasswordPolicy",
  "scope": "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1",
  "systemData": {
    "createdAt": "2022-03-25T08:29:54.290004+00:00",
    "createdBy": "adedaryorh@gmail.com",
    "createdByType": "User",
    "lastModifiedAt": "2022-03-25T08:29:54.290004+00:00",
    "lastModifiedBy": "adedaryorh@gmail.com",
    "lastModifiedByType": "User"
  },
  "type": "Microsoft.Authorization/policyAssignments"

Screenshot of the policy in Azure:

![Screenshot of the policy in Azure](./policy.png)

## Packer Image

The important lesson was that the image should reside in different Azure resource group than the Terraform template. ***Important:*** the variables *"client_id"*, *"client_secret"*, and *"subscription_id"* must be obtained from Azure.
See file **./packer/server.json**.
Note that *managed_image_resource_group_name* is hardcoded to *PackerImage-rg* and it must preexist in Azure.

### Packer output

```
packer  packer build server.json
azure-arm: output will be in this color.

==> azure-arm: Running builder ...
==> azure-arm: Getting tokens using client secret
==> azure-arm: Getting tokens using client secret
	 azure-arm: Creating Azure Resource Manager (ARM) client ...
==> azure-arm: WARNING: Zone resiliency may not be supported in East US, checkout the docs at https://docs.microsoft.com/en-us/azure/availability-zones/
==> azure-arm: Getting source image id for the deployment ...
==> azure-arm:  -> SourceImageName: '/subscriptions/a05e9c22-474e-442c-8d07-d2b208778ef9/providers/Microsoft.Compute/locations/East US/publishers/Canonical/ArtifactTypes/vmimage/offers/UbuntuServer/skus/18.04-LTS/versions/latest'
==> azure-arm: Creating resource group ...
==> azure-arm:  -> ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> Location          : 'East US'
==> azure-arm:  -> Tags              :
==> azure-arm: Validating deployment template ...
==> azure-arm:  -> ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> DeploymentName    : 'pkrdp2n285ewpkm'
==> azure-arm: Deploying deployment template ...
==> azure-arm:  -> ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> DeploymentName    : 'pkrdp2n285ewpkm'
==> azure-arm:
==> azure-arm: Getting the VM's IP address ...
==> azure-arm:  -> ResourceGroupName   : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> PublicIPAddressName : 'pkrip2n285ewpkm'
==> azure-arm:  -> NicName             : 'pkrni2n285ewpkm'
==> azure-arm:  -> Network Connection  : 'PublicEndpoint'
==> azure-arm:  -> IP Address          : '20.120.95.131'
==> azure-arm: Waiting for SSH to become available...
==> azure-arm: Connected to SSH!
==> azure-arm: Provisioning with shell script: /var/folders/nd/j5st0_411qj53nymq58bst640000gn/T/packer-shell287799332
==> azure-arm: + echo Hello, World!
==> azure-arm: + nohup busybox httpd -f -p 80
==> azure-arm: Querying the machine's properties ...
==> azure-arm:  -> ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> ComputeName       : 'pkrvm2n285ewpkm'
==> azure-arm:  -> Managed OS Disk   : '/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/pkr-Resource-Group-2n285ewpkm/providers/Microsoft.Compute/disks/pkros2n285ewpkm'
==> azure-arm: Querying the machine's additional disks properties ...
==> azure-arm:  -> ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> ComputeName       : 'pkrvm2n285ewpkm'
==> azure-arm: Powering off machine ...
==> azure-arm:  -> ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> ComputeName       : 'pkrvm2n285ewpkm'
==> azure-arm: Capturing image ...
==> azure-arm:  -> Compute ResourceGroupName : 'pkr-Resource-Group-2n285ewpkm'
==> azure-arm:  -> Compute Name              : 'pkrvm2n285ewpkm'
==> azure-arm:  -> Compute Location          : 'East US'
==> azure-arm:  -> Image ResourceGroupName   : 'myPackerImage-rg'
==> azure-arm:  -> Image Name                : 'myPackerImage'
==> azure-arm:  -> Image Location            : 'East US'
==> azure-arm: 
==> azure-arm: Deleting individual resources ...
==> azure-arm: Adding to deletion queue -> Microsoft.Compute/virtualMachines : 'pkrvm2n285ewpkm'
==> azure-arm: Adding to deletion queue -> Microsoft.Network/networkInterfaces : 'pkrni2n285ewpkm'
==> azure-arm: Adding to deletion queue -> Microsoft.Network/virtualNetworks : 'pkrvn2n285ewpkm'
==> azure-arm: Adding to deletion queue -> Microsoft.Network/publicIPAddresses : 'pkrip2n285ewpkm'
==> azure-arm: Waiting for deletion of all resources...
==> azure-arm: Attempting deletion -> Microsoft.Network/virtualNetworks : 'pkrvn2n285ewpkm'
==> azure-arm: Attempting deletion -> Microsoft.Network/publicIPAddresses : 'pkrip2n285ewpkm'
==> azure-arm: Attempting deletion -> Microsoft.Compute/virtualMachines : 'pkrvm2n285ewpkm'
==> azure-arm: Attempting deletion -> Microsoft.Network/networkInterfaces : 'pkrni2n285ewpkm'
==> azure-arm: Error deleting resource. Will retry.
==> azure-arm: Name: pkrip2n285ewpkm
==> azure-arm: Error: network.PublicIPAddressesClient#Delete: Failure sending request: StatusCode=0 -- Original Error: Code="PublicIPAddressCannotBeDeleted" Message="Public IP address /subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/pkr-Resource-Group-2n285ewpkm/providers/Microsoft.Network/publicIPAddresses/pkrip2n285ewpkm can not be deleted since it is still allocated to resource /subscriptions/a05e9c22-474e-442c-8d07-d2b208778ef9/resourceGroups/pkr-Resource-Group-2n285ewpkm/providers/Microsoft.Network/networkInterfaces/pkrni2n285ewpkm/ipConfigurations/ipconfig. In order to delete the public IP, disassociate/detach the Public IP address from the resource.  To learn how to do this, see aka.ms/deletepublicip." Details=[]
==> azure-arm:
==> azure-arm: Error deleting resource. Will retry.
==> azure-arm: Name: pkrvn2n285ewpkm
==> azure-arm: Error: network.VirtualNetworksClient#Delete: Failure sending request: StatusCode=0 -- Original Error: Code="InUseSubnetCannotBeDeleted" Message="Subnet pkrsn2n285ewpkm is in use by /subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/pkr-Resource-Group-2n285ewpkm/providers/Microsoft.Network/networkInterfaces/pkrni2n285ewpkm/ipConfigurations/ipconfig and cannot be deleted. In order to delete the subnet, delete all the resources within the subnet. See aka.ms/deletesubnet." Details=[]
==> azure-arm:
==> azure-arm: Attempting deletion -> Microsoft.Network/publicIPAddresses : 'pkrip2n285ewpkm'
==> azure-arm: Attempting deletion -> Microsoft.Network/virtualNetworks : 'pkrvn2n285ewpkm'
==> azure-arm:  Deleting -> Microsoft.Compute/disks : '/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/pkr-Resource-Group-2n285ewpkm/providers/Microsoft.Compute/disks/pkros2n285ewpkm'
==> azure-arm: Removing the created Deployment object: 'pkrdp2n285ewpkm'
==> azure-arm: 
==> azure-arm: Cleanup requested, deleting resource group ...
==> azure-arm: Resource group has been deleted.
Build 'azure-arm' finished after 5 minutes 23 seconds.

==> Wait completed after 5 minutes 23 seconds

==> Builds finished. The artifacts of successful builds are:
--> azure-arm: Azure.ResourceManagement.VMImage:

OSType: Linux
ManagedImageResourceGroupName: myPackerImage-rg
ManagedImageName: myPackerImage
ManagedImageId: /subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/PackerImage-rg/providers/Microsoft.Compute/images/myPackerImage
ManagedImageLocation: East US
```
##az image list 
## Terraform

### Configuration

For the variables see file **./tf/vars.tf**.
The terraform variables are:

- **prefix** defaults to *"myPackerImage"*
- **location** defaults to *"eastus"*
- **username** defaults to *"adedaryorh"*
- **password** defaults to *"Olatejumi9621.."*
- **packer_image_rg** defaults to *"PackerImage-rg"*
- **packer_image** defaults to *"myPackerImage"*
- **number_vms**  defaults to *2*

The main module is in the file: **./tf/main.tf**.

### Terraform output

```
tf  terraform plan -out solution.plan
azurerm_resource_group.main: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/resourceGroups/myPackerImage-rg]
azurerm_availability_set.avail_set: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/availabilitySets/nyPackerImage-avaset]
azurerm_public_ip.public_ip: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/publicIPAddresses/myPackerImage-publicIp]
azurerm_virtual_network.vnet: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/myPackerImage-network]
azurerm_network_security_group.security: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkSecurityGroups/WebServerEx-sg]
azurerm_subnet.internal: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/myPackerImage-rg/providers/Microsoft.Network/virtualNetwork/smyPackerImage-network/subnets/internal]
azurerm_subnet_network_security_group_association.main: Refreshing state... [id=/subscriptions/89N3PDyZzakoH7W6n8ZrjGDDktjh8iWFG6eKRvi3kvpQ/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/myPackerImage-network/subnets/internal]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply":

  # azurerm_virtual_network.vnet has been deleted
  - resource "azurerm_virtual_network" "vnet" {
		- address_space         = [
			 - "10.0.2.0/24",
		  ] -> null
		- dns_servers           = [] -> null
		- guid                  = "11977e28-0ff7-406d-8f2e-93fbd3956b6a" -> null
		- id                    = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/WebServerEx-network" -> null
		- location              = "eastus" -> null
		- name                  = "myPackerImage-network" -> null
		- resource_group_name   = "myPackerImage-rg" -> null
		- subnet                = [] -> null
		- vm_protection_enabled = false -> null
	 }
  # azurerm_subnet_network_security_group_association.main has been deleted
  - resource "azurerm_subnet_network_security_group_association" "main" {
		- id                        = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/myPackerImage-network/subnets/internal" -> null
		- network_security_group_id = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkSecurityGroups/myPackerImage-sg" -> null
		- subnet_id                 = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/myPackerImage-network/subnets/internal" -> null
	 }
  # azurerm_network_security_group.security has been deleted
  - resource "azurerm_network_security_group" "security" {
		- id                  = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/WebServerEx-rg/providers/Microsoft.Network/networkSecurityGroups/myPackerImage-sg" -> null
		- location            = "eastus" -> null
		- name                = "myPackerImage-sg" -> null
		- resource_group_name = "myPackerImage-rg" -> null
		- security_rule       = [
			 - {
				  - access                                     = "Allow"
				  - description                                = ""
				  - destination_address_prefix                 = "VirtualNetwork"
				  - destination_address_prefixes               = []
				  - destination_application_security_group_ids = []
				  - destination_port_range                     = "*"
				  - destination_port_ranges                    = []
				  - direction                                  = "Inbound"
				  - name                                       = "VMAccess"
				  - priority                                   = 200
				  - protocol                                   = "*"
				  - source_address_prefix                      = "VirtualNetwork"
				  - source_address_prefixes                    = []
				  - source_application_security_group_ids      = []
				  - source_port_range                          = "*"
				  - source_port_ranges                         = []
				},
			 - {
				  - access                                     = "Deny"
				  - description                                = ""
				  - destination_address_prefix                 = "*"
				  - destination_address_prefixes               = []
				  - destination_application_security_group_ids = []
				  - destination_port_range                     = "*"
				  - destination_port_ranges                    = []
				  - direction                                  = "Inbound"
				  - name                                       = "NoInternetIn"
				  - priority                                   = 100
				  - protocol                                   = "*"
				  - source_address_prefix                      = "*"
				  - source_address_prefixes                    = []
				  - source_application_security_group_ids      = []
				  - source_port_range                          = "*"
				  - source_port_ranges                         = []
				},
		  ] -> null
		- tags                = {
			 - "lesson" = "1"
		  } -> null
	 }
  # azurerm_resource_group.main has been deleted
  - resource "azurerm_resource_group" "main" {
		- id       = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/WebServerEx-rg" -> null
		- location = "eastus" -> null
		- name     = "WebServerEx-rg" -> null
	 }
  # azurerm_availability_set.avail_set has been deleted
  - resource "azurerm_availability_set" "avail_set" {
		- id                           = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/availabilitySets/WebServerEx-avaset" -> null
		- location                     = "eastus" -> null
		- managed                      = true -> null
		- name                         = "myPackerImage-avaset" -> null
		- platform_fault_domain_count  = 3 -> null
		- platform_update_domain_count = 5 -> null
		- resource_group_name          = "myPackerImage-rg" -> null
		- tags                         = {
			 - "lesson" = "1"
		  } -> null
	 }
  # azurerm_public_ip.public_ip has been deleted
  - resource "azurerm_public_ip" "public_ip" {
		- allocation_method       = "Static" -> null
		- availability_zone       = "No-Zone" -> null
		- id                      = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/publicIPAddresses/WebServerEx-publicIp" -> null
		- idle_timeout_in_minutes = 4 -> null
		- ip_address              = "20.120.109.118" -> null
		- ip_version              = "IPv4" -> null
		- location                = "eastus" -> null
		- name                    = "myPackerImage-publicIp" -> null
		- resource_group_name     = "myPackerImage-rg" -> null
		- sku                     = "Basic" -> null
		- sku_tier                = "Regional" -> null
		- tags                    = {
			 - "lesson" = "1"
		  } -> null
		- zones                   = [] -> null
	 }
  # azurerm_subnet.internal has been deleted
  - resource "azurerm_subnet" "internal" {
		- address_prefix                                 = "10.0.2.0/24" -> null
		- address_prefixes                               = [
			 - "10.0.2.0/24",
		  ] -> null
		- enforce_private_link_endpoint_network_policies = false -> null
		- enforce_private_link_service_network_policies  = false -> null
		- id                                             = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/WebServerEx-network/subnets/internal" -> null
		- name                                           = "internal" -> null
		- resource_group_name                            = "myPackerImage-rg" -> null
		- virtual_network_name                           = "myPackerImage-network" -> null
	 }

Unless you have made equivalent changes to your configuration, or ignored the relevant attributes using ignore_changes, the following plan may include actions to undo or
respond to these changes.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_availability_set.avail_set will be created
  + resource "azurerm_availability_set" "avail_set" {
		+ id                           = (known after apply)
		+ location                     = "eastus"
		+ managed                      = true
		+ name                         = "myPackerImage-avaset"
		+ platform_fault_domain_count  = 3
		+ platform_update_domain_count = 5
		+ resource_group_name          = "myPackerImage-rg"
		+ tags                         = {
			 + "lesson" = "1"
		  }
	 }

  # azurerm_lb.load_balancer will be created
  + resource "azurerm_lb" "load_balancer" {
		+ id                   = (known after apply)
		+ location             = "eastus"
		+ name                 = "myPackerImage-lb"
		+ private_ip_address   = (known after apply)
		+ private_ip_addresses = (known after apply)
		+ resource_group_name  = "myPackerImage-rg"
		+ sku                  = "Basic"
		+ sku_tier             = "Regional"
		+ tags                 = {
			 + "lesson" = "1"
		  }

		+ frontend_ip_configuration {
			 + availability_zone                                  = (known after apply)
			 + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
			 + id                                                 = (known after apply)
			 + inbound_nat_rules                                  = (known after apply)
			 + load_balancer_rules                                = (known after apply)
			 + name                                               = "WebServerEx-PublicIP"
			 + outbound_rules                                     = (known after apply)
			 + private_ip_address                                 = (known after apply)
			 + private_ip_address_allocation                      = (known after apply)
			 + private_ip_address_version                         = (known after apply)
			 + public_ip_address_id                               = (known after apply)
			 + public_ip_prefix_id                                = (known after apply)
			 + subnet_id                                          = (known after apply)
			 + zones                                              = (known after apply)
		  }
	 }

  # azurerm_lb_backend_address_pool.address_pool will be created
  + resource "azurerm_lb_backend_address_pool" "address_pool" {
		+ backend_ip_configurations = (known after apply)
		+ id                        = (known after apply)
		+ load_balancing_rules      = (known after apply)
		+ loadbalancer_id           = (known after apply)
		+ name                      = "WebServerEx-bap"
		+ outbound_rules            = (known after apply)
		+ resource_group_name       = (known after apply)
	 }

  # azurerm_linux_virtual_machine.vm[0] will be created
  + resource "azurerm_linux_virtual_machine" "vm" {
		+ admin_password                  = (sensitive value)
		+ admin_username                  = "adedaryorh"
		+ allow_extension_operations      = true
		+ availability_set_id             = (known after apply)
		+ computer_name                   = (known after apply)
		+ disable_password_authentication = false
		+ extensions_time_budget          = "PT1H30M"
		+ id                              = (known after apply)
		+ location                        = "eastus"
		+ max_bid_price                   = -1
		+ name                            = "WebServerEx-vm-0"
		+ network_interface_ids           = (known after apply)
		+ platform_fault_domain           = -1
		+ priority                        = "Regular"
		+ private_ip_address              = (known after apply)
		+ private_ip_addresses            = (known after apply)
		+ provision_vm_agent              = true
		+ public_ip_address               = (known after apply)
		+ public_ip_addresses             = (known after apply)
		+ resource_group_name             = "myPackerImage-rg"
		+ size                            = "Standard_B1s"
		+ source_image_id                 = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/PackerImage-rg/providers/Microsoft.Compute/images/WebServerImage"
		+ tags                            = {
			 + "lesson" = "1"
		  }
		+ virtual_machine_id              = (known after apply)
		+ zone                            = (known after apply)

		+ os_disk {
			 + caching                   = "ReadWrite"
			 + disk_size_gb              = (known after apply)
			 + name                      = (known after apply)
			 + storage_account_type      = "Standard_LRS"
			 + write_accelerator_enabled = false
		  }
	 }

  # azurerm_managed_disk.disk[0] will be created
  + resource "azurerm_managed_disk" "disk" {
		+ create_option        = "Empty"
		+ disk_iops_read_write = (known after apply)
		+ disk_mbps_read_write = (known after apply)
		+ disk_size_gb         = 1
		+ id                   = (known after apply)
		+ location             = "eastus"
		+ logical_sector_size  = (known after apply)
		+ max_shares           = (known after apply)
		+ name                 = "WebServerEx-disk-0"
		+ resource_group_name  = "WebServerEx-rg"
		+ source_uri           = (known after apply)
		+ storage_account_type = "Standard_LRS"
		+ tags                 = {
			 + "lesson" = "1"
		  }
		+ tier                 = (known after apply)
	 }

  # azurerm_network_interface.internal[0] will be created
  + resource "azurerm_network_interface" "internal" {
		+ applied_dns_servers           = (known after apply)
		+ dns_servers                   = (known after apply)
		+ enable_accelerated_networking = false
		+ enable_ip_forwarding          = false
		+ id                            = (known after apply)
		+ internal_dns_name_label       = (known after apply)
		+ internal_domain_name_suffix   = (known after apply)
		+ location                      = "eastus"
		+ mac_address                   = (known after apply)
		+ name                          = "WebServerEx-nic_int-0"
		+ private_ip_address            = (known after apply)
		+ private_ip_addresses          = (known after apply)
		+ resource_group_name           = "WebServerEx-rg"
		+ tags                          = {
			 + "lesson" = "1"
		  }
		+ virtual_machine_id            = (known after apply)

		+ ip_configuration {
			 + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
			 + name                                               = "internal"
			 + primary                                            = (known after apply)
			 + private_ip_address                                 = (known after apply)
			 + private_ip_address_allocation                      = "dynamic"
			 + private_ip_address_version                         = "IPv4"
			 + subnet_id                                          = (known after apply)
		  }
	 }

  # azurerm_network_interface_backend_address_pool_association.pool_assoc[0] will be created
  + resource "azurerm_network_interface_backend_address_pool_association" "pool_assoc" {
		+ backend_address_pool_id = (known after apply)
		+ id                      = (known after apply)
		+ ip_configuration_name   = "internal"
		+ network_interface_id    = (known after apply)
	 }

  # azurerm_network_security_group.security will be created
  + resource "azurerm_network_security_group" "security" {
		+ id                  = (known after apply)
		+ location            = "eastus"
		+ name                = "myPackerImage-sg"
		+ resource_group_name = "myPackerImage-rg"
		+ security_rule       = [
			 + {
				  + access                                     = "Allow"
				  + description                                = ""
				  + destination_address_prefix                 = "VirtualNetwork"
				  + destination_address_prefixes               = []
				  + destination_application_security_group_ids = []
				  + destination_port_range                     = "*"
				  + destination_port_ranges                    = []
				  + direction                                  = "Inbound"
				  + name                                       = "VMAccess"
				  + priority                                   = 200
				  + protocol                                   = "*"
				  + source_address_prefix                      = "VirtualNetwork"
				  + source_address_prefixes                    = []
				  + source_application_security_group_ids      = []
				  + source_port_range                          = "*"
				  + source_port_ranges                         = []
				},
			 + {
				  + access                                     = "Deny"
				  + description                                = ""
				  + destination_address_prefix                 = "*"
				  + destination_address_prefixes               = []
				  + destination_application_security_group_ids = []
				  + destination_port_range                     = "*"
				  + destination_port_ranges                    = []
				  + direction                                  = "Inbound"
				  + name                                       = "NoInternetIn"
				  + priority                                   = 100
				  + protocol                                   = "*"
				  + source_address_prefix                      = "*"
				  + source_address_prefixes                    = []
				  + source_application_security_group_ids      = []
				  + source_port_range                          = "*"
				  + source_port_ranges                         = []
				},
		  ]
		+ tags                = {
			 + "lesson" = "1"
		  }
	 }

  # azurerm_public_ip.public_ip will be created
  + resource "azurerm_public_ip" "public_ip" {
		+ allocation_method       = "Static"
		+ availability_zone       = (known after apply)
		+ fqdn                    = (known after apply)
		+ id                      = (known after apply)
		+ idle_timeout_in_minutes = 4
		+ ip_address              = (known after apply)
		+ ip_version              = "IPv4"
		+ location                = "eastus"
		+ name                    = "myPackerImage-publicIp"
		+ resource_group_name     = "myPackerImage-rg"
		+ sku                     = "Basic"
		+ sku_tier                = "Regional"
		+ tags                    = {
			 + "lesson" = "1"
		  }
		+ zones                   = (known after apply)
	 }

  # azurerm_resource_group.main will be created
  + resource "azurerm_resource_group" "main" {
		+ id       = (known after apply)
		+ location = "eastus"
		+ name     = "myPackerImage-rg"
	 }

  # azurerm_subnet.internal will be created
  + resource "azurerm_subnet" "internal" {
		+ address_prefix                                 = (known after apply)
		+ address_prefixes                               = [
			 + "10.0.2.0/24",
		  ]
		+ enforce_private_link_endpoint_network_policies = false
		+ enforce_private_link_service_network_policies  = false
		+ id                                             = (known after apply)
		+ name                                           = "internal"
		+ resource_group_name                            = "WebServerEx-rg"
		+ virtual_network_name                           = "WebServerEx-network"
	 }

  # azurerm_subnet_network_security_group_association.main will be created
  + resource "azurerm_subnet_network_security_group_association" "main" {
		+ id                        = (known after apply)
		+ network_security_group_id = (known after apply)
		+ subnet_id                 = (known after apply)
	 }

  # azurerm_virtual_machine_data_disk_attachment.mount_disk[0] will be created
  + resource "azurerm_virtual_machine_data_disk_attachment" "mount_disk" {
		+ caching                   = "ReadWrite"
		+ create_option             = "Attach"
		+ id                        = (known after apply)
		+ lun                       = 0
		+ managed_disk_id           = (known after apply)
		+ virtual_machine_id        = (known after apply)
		+ write_accelerator_enabled = false
	 }

  # azurerm_virtual_network.vnet will be created
  + resource "azurerm_virtual_network" "vnet" {
		+ address_space         = [
			 + "10.0.2.0/24",
		  ]
		+ dns_servers           = (known after apply)
		+ guid                  = (known after apply)
		+ id                    = (known after apply)
		+ location              = "eastus"
		+ name                  = "WebServerEx-network"
		+ resource_group_name   = "WebServerEx-rg"
		+ subnet                = (known after apply)
		+ vm_protection_enabled = false
	 }

Plan: 14 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: solution.plan

To perform exactly these actions, run the following command to apply:
	 terraform apply "solution.plan"
```

### Applying plan

```
tf  terraform plan -out solution.plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_availability_set.avail_set will be created
  + resource "azurerm_availability_set" "avail_set" {
      + id                           = (known after apply)
      + location                     = "eastus"
      + managed                      = true
      + name                         = "myPackerImage-avaset"
      + platform_fault_domain_count  = 3
      + platform_update_domain_count = 5
      + resource_group_name          = "myPackerImage-rg"
      + tags                         = {
          + "lesson" = "1"
        }
    }

  # azurerm_lb.load_balancer will be created
  + resource "azurerm_lb" "load_balancer" {
      + id                   = (known after apply)
      + location             = "eastus"
      + name                 = "myPackerImage-lb"
      + private_ip_address   = (known after apply)
      + private_ip_addresses = (known after apply)
      + resource_group_name  = "myPackerImage-rg"
      + sku                  = "Basic"
      + sku_tier             = "Regional"
      + tags                 = {
          + "lesson" = "1"
        }

      + frontend_ip_configuration {
          + availability_zone                                  = (known after apply)
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + id                                                 = (known after apply)
          + inbound_nat_rules                                  = (known after apply)
          + load_balancer_rules                                = (known after apply)
          + name                                               = "WebServerEx-PublicIP"
          + outbound_rules                                     = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = (known after apply)
          + private_ip_address_version                         = (known after apply)
          + public_ip_address_id                               = (known after apply)
          + public_ip_prefix_id                                = (known after apply)
          + subnet_id                                          = (known after apply)
          + zones                                              = (known after apply)
        }
    }

  # azurerm_lb_backend_address_pool.address_pool will be created
  + resource "azurerm_lb_backend_address_pool" "address_pool" {
      + backend_ip_configurations = (known after apply)
      + id                        = (known after apply)
      + load_balancing_rules      = (known after apply)
      + loadbalancer_id           = (known after apply)
      + name                      = "WebServerEx-bap"
      + outbound_rules            = (known after apply)
      + resource_group_name       = (known after apply)
    }

  # azurerm_linux_virtual_machine.vm[0] will be created
  + resource "azurerm_linux_virtual_machine" "vm" {
      + admin_password                  = (sensitive value)
      + admin_username                  = "joaquin.d"
      + allow_extension_operations      = true
      + availability_set_id             = (known after apply)
      + computer_name                   = (known after apply)
      + disable_password_authentication = false
      + extensions_time_budget          = "PT1H30M"
      + id                              = (known after apply)
      + location                        = "eastus"
      + max_bid_price                   = -1
      + name                            = "WebServerEx-vm-0"
      + network_interface_ids           = (known after apply)
      + platform_fault_domain           = -1
      + priority                        = "Regular"
      + private_ip_address              = (known after apply)
      + private_ip_addresses            = (known after apply)
      + provision_vm_agent              = true
      + public_ip_address               = (known after apply)
      + public_ip_addresses             = (known after apply)
      + resource_group_name             = "WebServerEx-rg"
      + size                            = "Standard_B1s"
      + source_image_id                 = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/PackerImage-rg/providers/Microsoft.Compute/images/WebServerImage"
      + tags                            = {
          + "lesson" = "1"
        }
      + virtual_machine_id              = (known after apply)
      + zone                            = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }
    }

  # azurerm_linux_virtual_machine.vm[1] will be created
  + resource "azurerm_linux_virtual_machine" "vm" {
      + admin_password                  = (sensitive value)
      + admin_username                  = "joaquin.d"
      + allow_extension_operations      = true
      + availability_set_id             = (known after apply)
      + computer_name                   = (known after apply)
      + disable_password_authentication = false
      + extensions_time_budget          = "PT1H30M"
      + id                              = (known after apply)
      + location                        = "eastus"
      + max_bid_price                   = -1
      + name                            = "myPackerImage-vm-1"
      + network_interface_ids           = (known after apply)
      + platform_fault_domain           = -1
      + priority                        = "Regular"
      + private_ip_address              = (known after apply)
      + private_ip_addresses            = (known after apply)
      + provision_vm_agent              = true
      + public_ip_address               = (known after apply)
      + public_ip_addresses             = (known after apply)
      + resource_group_name             = "myPackerImage-rg"
      + size                            = "Standard_B1s"
      + source_image_id                 = "/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/PackerImage-rg/providers/Microsoft.Compute/images/WebServerImage"
      + tags                            = {
          + "lesson" = "1"
        }
      + virtual_machine_id              = (known after apply)
      + zone                            = (known after apply)

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = (known after apply)
          + storage_account_type      = "Standard_LRS"
          + write_accelerator_enabled = false
        }
    }

  # azurerm_managed_disk.disk[0] will be created
  + resource "azurerm_managed_disk" "disk" {
      + create_option        = "Empty"
      + disk_iops_read_only  = (known after apply)
      + disk_iops_read_write = (known after apply)
      + disk_mbps_read_only  = (known after apply)
      + disk_mbps_read_write = (known after apply)
      + disk_size_gb         = 1
      + id                   = (known after apply)
      + location             = "eastus"
      + logical_sector_size  = (known after apply)
      + max_shares           = (known after apply)
      + name                 = "myPackerImage-disk-0"
      + resource_group_name  = "myPackerImage-rg"
      + source_uri           = (known after apply)
      + storage_account_type = "Standard_LRS"
      + tags                 = {
          + "lesson" = "1"
        }
      + tier                 = (known after apply)
    }

  # azurerm_managed_disk.disk[1] will be created
  + resource "azurerm_managed_disk" "disk" {
      + create_option        = "Empty"
      + disk_iops_read_only  = (known after apply)
      + disk_iops_read_write = (known after apply)
      + disk_mbps_read_only  = (known after apply)
      + disk_mbps_read_write = (known after apply)
      + disk_size_gb         = 1
      + id                   = (known after apply)
      + location             = "eastus"
      + logical_sector_size  = (known after apply)
      + max_shares           = (known after apply)
      + name                 = "myPackerImage-disk-1"
      + resource_group_name  = "myPackerImage-rg"
      + source_uri           = (known after apply)
      + storage_account_type = "Standard_LRS"
      + tags                 = {
          + "lesson" = "1"
        }
      + tier                 = (known after apply)
    }

  # azurerm_network_interface.internal[0] will be created
  + resource "azurerm_network_interface" "internal" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "eastus"
      + mac_address                   = (known after apply)
      + name                          = "myPackerImage-nic_int-0"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "myPackerImage-rg"
      + tags                          = {
          + "lesson" = "1"
        }
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "internal"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "dynamic"
          + private_ip_address_version                         = "IPv4"
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_interface.internal[1] will be created
  + resource "azurerm_network_interface" "internal" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "eastus"
      + mac_address                   = (known after apply)
      + name                          = "WebServerEx-nic_int-1"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = "WebServerEx-rg"
      + tags                          = {
          + "lesson" = "1"
        }
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "internal"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "dynamic"
          + private_ip_address_version                         = "IPv4"
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_interface_backend_address_pool_association.pool_assoc[0] will be created
  + resource "azurerm_network_interface_backend_address_pool_association" "pool_assoc" {
      + backend_address_pool_id = (known after apply)
      + id                      = (known after apply)
      + ip_configuration_name   = "internal"
      + network_interface_id    = (known after apply)
    }

  # azurerm_network_interface_backend_address_pool_association.pool_assoc[1] will be created
  + resource "azurerm_network_interface_backend_address_pool_association" "pool_assoc" {
      + backend_address_pool_id = (known after apply)
      + id                      = (known after apply)
      + ip_configuration_name   = "internal"
      + network_interface_id    = (known after apply)
    }

  # azurerm_network_security_group.security will be created
  + resource "azurerm_network_security_group" "security" {
      + id                  = (known after apply)
      + location            = "eastus"
      + name                = "myPackerImage-sg"
      + resource_group_name = "myPackerImage-rg"
      + security_rule       = [
          + {
              + access                                     = "Allow"
              + description                                = ""
              + destination_address_prefix                 = "VirtualNetwork"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "*"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "VMAccess"
              + priority                                   = 200
              + protocol                                   = "*"
              + source_address_prefix                      = "VirtualNetwork"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
            },
          + {
              + access                                     = "Deny"
              + description                                = ""
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "*"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "NoInternetIn"
              + priority                                   = 100
              + protocol                                   = "*"
              + source_address_prefix                      = "*"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
            },
        ]
      + tags                = {
          + "lesson" = "1"
        }
    }

  # azurerm_public_ip.public_ip will be created
  + resource "azurerm_public_ip" "public_ip" {
      + allocation_method       = "Static"
      + availability_zone       = (known after apply)
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "eastus"
      + name                    = "myPackerImage-publicIp"
      + resource_group_name     = "myPackerImage-rg"
      + sku                     = "Basic"
      + sku_tier                = "Regional"
      + tags                    = {
          + "lesson" = "1"
        }
      + zones                   = (known after apply)
    }

  # azurerm_resource_group.main will be created
  + resource "azurerm_resource_group" "main" {
      + id       = (known after apply)
      + location = "eastus"
      + name     = "myPackerImage-rg"
    }

  # azurerm_subnet.internal will be created
  + resource "azurerm_subnet" "internal" {
      + address_prefix                                 = (known after apply)
      + address_prefixes                               = [
          + "10.0.2.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = false
      + enforce_private_link_service_network_policies  = false
      + id                                             = (known after apply)
      + name                                           = "internal"
      + resource_group_name                            = "WebServerEx-rg"
      + virtual_network_name                           = "WebServerEx-network"
    }

  # azurerm_subnet_network_security_group_association.main will be created
  + resource "azurerm_subnet_network_security_group_association" "main" {
      + id                        = (known after apply)
      + network_security_group_id = (known after apply)
      + subnet_id                 = (known after apply)
    }

  # azurerm_virtual_machine_data_disk_attachment.mount_disk[0] will be created
  + resource "azurerm_virtual_machine_data_disk_attachment" "mount_disk" {
      + caching                   = "ReadWrite"
      + create_option             = "Attach"
      + id                        = (known after apply)
      + lun                       = 0
      + managed_disk_id           = (known after apply)
      + virtual_machine_id        = (known after apply)
      + write_accelerator_enabled = false
    }

  # azurerm_virtual_machine_data_disk_attachment.mount_disk[1] will be created
  + resource "azurerm_virtual_machine_data_disk_attachment" "mount_disk" {
      + caching                   = "ReadWrite"
      + create_option             = "Attach"
      + id                        = (known after apply)
      + lun                       = 10
      + managed_disk_id           = (known after apply)
      + virtual_machine_id        = (known after apply)
      + write_accelerator_enabled = false
    }

  # azurerm_virtual_network.vnet will be created
  + resource "azurerm_virtual_network" "vnet" {
      + address_space         = [
          + "10.0.2.0/24",
        ]
      + dns_servers           = (known after apply)
      + guid                  = (known after apply)
      + id                    = (known after apply)
      + location              = "eastus"
      + name                  = "myPackerImage-network"
      + resource_group_name   = "myPackerImage-rg"
      + subnet                = (known after apply)
      + vm_protection_enabled = false
    }

Plan: 19 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: solution.plan

To perform exactly these actions, run the following command to apply:
    terraform apply "solution.plan"
tf  
tf  
tf  terraform apply "solution.plan"
azurerm_resource_group.main: Creating...
azurerm_resource_group.main: Creation complete after 1s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg]
azurerm_availability_set.avail_set: Creating...
azurerm_virtual_network.vnet: Creating...
azurerm_managed_disk.disk[1]: Creating...
azurerm_public_ip.public_ip: Creating...
azurerm_managed_disk.disk[0]: Creating...
azurerm_network_security_group.security: Creating...
azurerm_availability_set.avail_set: Creation complete after 2s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/availabilitySets/myPackerImage-avaset]
azurerm_public_ip.public_ip: Creation complete after 4s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/publicIPAddresses/WebServerEx-publicIp]
azurerm_lb.load_balancer: Creating...
azurerm_managed_disk.disk[1]: Creation complete after 4s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/disks/myPackerImage-disk-1]
azurerm_managed_disk.disk[0]: Creation complete after 5s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/disks/myPackerImage-disk-0]
azurerm_virtual_network.vnet: Creation complete after 6s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/myPackerImage-network]
azurerm_network_security_group.security: Creation complete after 6s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkSecurityGroups/myPackerImage-sg]
azurerm_subnet.internal: Creating...
azurerm_lb.load_balancer: Creation complete after 3s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/loadBalancers/myPackerImage-lb]
azurerm_lb_backend_address_pool.address_pool: Creating...
azurerm_lb_backend_address_pool.address_pool: Creation complete after 1s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/loadBalancers/myPackerImage-lb/backendAddressPools/myPackerImage-bap]
azurerm_subnet.internal: Creation complete after 4s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providersresourceGroups/myPackerImage-rg/providers/Microsoft.Network/virtualNetworks/myPackerImage-network/subnets/internal]
azurerm_subnet_network_security_group_association.main: Creating...
azurerm_network_interface.internal[1]: Creating...
azurerm_network_interface.internal[0]: Creating...
azurerm_subnet_network_security_group_association.main: Creation complete after 5s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/WebServerEx-rg/providers/Microsoft.Network/virtualNetworks/WebServerEx-network/subnets/internal]
azurerm_network_interface.internal[1]: Creation complete after 7s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkInterfaces/myPackerImage-nic_int-1]
azurerm_network_interface.internal[0]: Creation complete after 9s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkInterfaces/myPackerImage-nic_int-0]
azurerm_network_interface_backend_address_pool_association.pool_assoc[1]: Creating...
azurerm_network_interface_backend_address_pool_association.pool_assoc[0]: Creating...
azurerm_linux_virtual_machine.vm[1]: Creating...
azurerm_linux_virtual_machine.vm[0]: Creating...
azurerm_network_interface_backend_address_pool_association.pool_assoc[1]: Creation complete after 2s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkInterfaces/WebServerEx-nic_int-1/ipConfigurations/internal|/subscriptions//resourceGroups/myPackerImage-rg/providers/Microsoft.N7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providersetwork/loadBalancers/myPackerImage-lb/backendAddressPools/myPackerImage-bap]
azurerm_network_interface_backend_address_pool_association.pool_assoc[0]: Creation complete after 2s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/networkInterfaces/WebServerEx-nic_int-0/ipConfigurations/internal|/subscriptions/a05e9c22-474e-442c-8d07-d2b208778ef9/resourceGroups/myPackerImage-rg/providers/Microsoft.Network/loadBalancers/myPackerImage-lb/backendAddressPools/WebServerEx-bap]
azurerm_linux_virtual_machine.vm[1]: Still creating... [10s elapsed]
azurerm_linux_virtual_machine.vm[0]: Still creating... [10s elapsed]
azurerm_linux_virtual_machine.vm[0]: Still creating... [20s elapsed]
azurerm_linux_virtual_machine.vm[1]: Still creating... [20s elapsed]
azurerm_linux_virtual_machine.vm[1]: Still creating... [30s elapsed]
azurerm_linux_virtual_machine.vm[0]: Still creating... [30s elapsed]
azurerm_linux_virtual_machine.vm[1]: Still creating... [40s elapsed]
azurerm_linux_virtual_machine.vm[0]: Still creating... [40s elapsed]
azurerm_linux_virtual_machine.vm[1]: Creation complete after 48s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/virtualMachines/myPackerImage-vm-1]
azurerm_linux_virtual_machine.vm[0]: Creation complete after 49s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/providers/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/virtualMachines/myPackerImage-vm-0]
azurerm_virtual_machine_data_disk_attachment.mount_disk[0]: Creating...
azurerm_virtual_machine_data_disk_attachment.mount_disk[1]: Creating...
azurerm_virtual_machine_data_disk_attachment.mount_disk[1]: Still creating... [10s elapsed]
azurerm_virtual_machine_data_disk_attachment.mount_disk[0]: Still creating... [10s elapsed]
azurerm_virtual_machine_data_disk_attachment.mount_disk[1]: Still creating... [20s elapsed]
azurerm_virtual_machine_data_disk_attachment.mount_disk[0]: Still creating... [20s elapsed]
azurerm_virtual_machine_data_disk_attachment.mount_disk[0]: Still creating... [30s elapsed]
azurerm_virtual_machine_data_disk_attachment.mount_disk[1]: Still creating... [30s elapsed]
azurerm_virtual_machine_data_disk_attachment.mount_disk[0]: Creation complete after 31s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/virtualMachines/myPackerImage-vm-0/dataDisks/myPackerImage-disk-0]
azurerm_virtual_machine_data_disk_attachment.mount_disk[1]: Creation complete after 31s [id=/subscriptions/7ff6d7c2-fea2-4d18-9a2d-1a1f540fefe1/resourceGroups/myPackerImage-rg/providers/Microsoft.Compute/virtualMachines/myPackerImage-vm-1/dataDisks/myPackerImage-disk-1]

Apply complete! Resources: 19 added, 0 changed, 0 destroyed.
```

Plan applied successfully. Screenshot of the infrastructure in Azure:
![Screenshot of the infrastructure in Azure](./infra.png)

