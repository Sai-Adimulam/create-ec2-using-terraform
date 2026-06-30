resource "aws_instance" "web" {
  count         = var.instance_count
  instance_type = var.instance_type
  ami           = var.ami_id
  
tags = {
  Name = "instance-${count.index + 1 }"
 }
}
