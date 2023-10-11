provider "aws" {
    region = "us-east-1"
    
}
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
      "Name" = "Myvpc"
    }
    
}
resource "aws_instance" "myec2" {
    ami = "ami-0ea41fdfab260e062"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    tags = {
      "Name" = "myec2"
    }

  
}