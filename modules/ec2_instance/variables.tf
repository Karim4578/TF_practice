variable "VPC_ID" {
    description = "VPC ID"
  
}

variable "Subnet_ID" {
    description = "Subnet ID"
  
}

variable "Security_Group" {
    description = "SG ID"
    }
variable "instace_type" {
  description = "Instance Type"
}

variable "AMI" {
    description = "AMI ID"
  
}
variable "Name" {
    description = "instnace name"
  
}

variable "Node_Details" {
    type = map(string)
    default = {
      "Env" = "Default"
    }
  
}

