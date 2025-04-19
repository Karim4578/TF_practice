resource "aws_instance" "My_Instance" {
   subnet_id = var.Subnet_ID
    instance_type = var.instace_type
    ami = var.AMI
   tags = {
     Name=var.Name
     Env=var.Node_Details.Env
   }
   }

     
