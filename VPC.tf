provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}

resource "aws_vpc" "Main_VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Main_VPC"
  }

}
resource "aws_subnet" "Subnet1" {
  vpc_id                  = aws_vpc.Main_VPC.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet1"
  }
}
resource "aws_subnet" "Subnet2" {
  vpc_id                  = aws_vpc.Main_VPC.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet2"
  }
}
resource "aws_subnet" "Subnet3" {
  vpc_id                  = aws_vpc.Main_VPC.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "ap-south-1c"
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet3"
  }
}

resource "aws_internet_gateway" "Main_Gateway" {
  vpc_id = aws_vpc.Main_VPC.id

  tags = {
    Name = "Main_IGW"
  }

}

resource "aws_route_table" "Main_Route" {
  vpc_id = aws_vpc.Main_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Main_Gateway.id
  }

  tags = {
    Name = "Main_Route"
  }
}




resource "aws_route_table_association" "Route1" {
  subnet_id      = aws_subnet.Subnet1.id
  route_table_id = aws_route_table.Main_Route.id

}

resource "aws_route_table_association" "Route2" {
  subnet_id      = aws_subnet.Subnet2.id
  route_table_id = aws_route_table.Main_Route.id

}
resource "aws_route_table_association" "Route3" {
  subnet_id      = aws_subnet.Subnet3.id
  route_table_id = aws_route_table.Main_Route.id

}

output "vpc_id" {
  description = "Main VPC ID"
  value       = resource.aws_vpc.Main_VPC.id

}