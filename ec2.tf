resource "aws_instance" "Web-Server" {
    ami = var.ami_id
    instance_type = var.instance_type
    associate_public_ip_address = true
    user_data = file("./scripts/apache.sh")
  
}