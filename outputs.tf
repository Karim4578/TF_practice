output "vpc_id" {
  value = aws_vpc.Main_VPC.id
}

output "Subnet1" {
    value = aws_subnet.Subnet1.id
  
}

output "Subnet2" {
    value = aws_subnet.Subnet2.id
  
}

output "Subnet3" {
    value = aws_subnet.Subnet3.id
  
}
