provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
    ami = "ami-0f9fc25dd2506cf6d"
    instance_type = "t2.nano"
    key_name = "key1"
    tags  =  {
        Name = "Jenkins"
        Env = "dev"
    }
}

output "publisip" {
    value = aws_instance.terraform-demo.public_ip
}
output "publicdns" {
    value = aws_instance.terraform-demo.public_dns
}