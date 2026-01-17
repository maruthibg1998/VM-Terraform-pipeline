variable location{
        default = "eastus"
        type = string
}
variable rg_name{
        default = "maruthirg"
        type = string
}

variable "vnet_name" {
  type    = string
  default = "maruthi-vnet"
}

variable "vnet_address_space" {
  type    = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  type    = string
  default = "maruthi-subnet"
}

variable "subnet_address_prefixes" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "nsg_name" {
  type        = string
  description = "Network Security Group name"
  default     = "maruthi-nsg"
}

variable "public_ip_name" {
  type        = string
  description = "Public IP name"
  default     = "maruthi-pip"
}

variable "nic_name" {
  type        = string
  description = "Network Interface name"
  default     = "maruthi-nic"
}

variable "vm_name" {
  type        = string
  description = "Linux VM name"
  default     = "maruthi-linux-vm01"
}

variable "vm_size" {
  type        = string
  description = "VM size"
  default     = "Standard_DC1s_v3"
}

variable "admin_username" {
  type        = string
  description = "Admin username"
  default     = "azureuser"
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key content"
}
