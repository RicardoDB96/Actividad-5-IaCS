provider "aws" {
  region = "us-east-1"
}

# Instancia de Linux
resource "aws_instance" "windows_instance" {
  ami           = var.windows-ami
  instance_type = var.windows_instance_type
  key_name      = var.key_name
  associate_public_ip_address = true # Forzar asignacion ip publica

  tags = {
    Name = "Windows-Instancia"
  }
}

output "windows_ip_publica" {
  value = aws_instance.windows_instance.public_ip
}