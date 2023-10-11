provider "aws" {
    region = "us-east-1a"
  
}
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.1/24"
    enable_dns_hostnames = true
    enable_dns_support = true
    
  
}