provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""

}

resource "aws_instance" "admin" {
    ami = "ami-0ff20c640f06d85cf"
    instance_type = "t2.medium"
    security_groups = [ "default" ]
    key_name = ""
    root_block_device {
      volume_size = 20
      volume_type = "gp2"
      delete_on_termination = true
    }
    tags = {
      Name = "minicube"
    }   
    


}
