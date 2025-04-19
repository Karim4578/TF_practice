module "My_Instance1" {
    source = "./modules/ec2_instance"
    instace_type = "t2.micro"
    AMI = "ami-0e35ddab05955cf57"
    Subnet_ID = "subnet-0943aafad8dd4566b"
    VPC_ID = "vpc-0e856ac4537461a88"
    Security_Group = "sg-08273e3a5eb9072a8"
    Name = "Devops1"

    Node_Details = {
      Env="Prod"
    }

   }


  
