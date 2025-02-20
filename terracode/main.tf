provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""

}

resource "aws_instance" "admin"{
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t2.medium"
    security_groups = [ "default" ]
    key_name = ""
    root_block_device {
      volume_size = 250
      volume_type = "gp2"
      delete_on_termination = true
    }
    tags = {
      Name = "admin-server"
    } 
    user_data = <<-EOF
    #!/bin/bash
    sudo snap install microk8s --classic
    sudo microk8s start
    sudo alias kubectl='microk8s kubectl'  
    EOF
}    
output "public_ip" {
    value = aws_instance.admin.public_ip


}