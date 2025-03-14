provider "aws" {
  region = "us-east-1"
}

# Instancia de Linux
resource "aws_instance" "linux_instance" {
  ami           = var.linux-ami
  instance_type = var.linux_instance_type
  key_name      = var.key_name
  associate_public_ip_address = true # Forzar asignacion ip publica

  tags = {
    Name = "Linux-Instancia"
  }
}

output "linux_ip_publica" {
  value = aws_instance.linux_instance.public_ip
}