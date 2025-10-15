output "ec2_public_ip" {
  value = aws_instance.web_server.public_ip
  description = "Public IP of EC2 instance"
}

output "private_key_path" {
  value = local_file.private_key.filename
  description = "Path to your private key"
}
