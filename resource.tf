resource "aws_instance" "my_ec2" {
  ami           = var.ec2_id
  instance_type = var.ec2_type
  key_name = var.key-name
  tags = {
    Name = var.ec2_name
  }
  connection {
    type = "ssh"
    user = "ec2-user"
    remote_key = var.key_path
    hosts = self.public_ip
  }
  

}