resource "aws_instance" "My_Instance" {
    provider = aws.ap-south-1
    subnet_id = aws_subnet.Subnet1.id
    availability_zone = "ap-south-1a"
    security_groups = [var.Security_Group]
    instance_type = var.instace_type
    ami = var.AMI

    tags = {
        Name = "My_Instance"
    }
}

output "Public_IP" {
value = aws_instance.My_Instance.public_ip
  
}