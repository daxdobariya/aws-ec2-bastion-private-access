output "bastion_public_ip" {
  value = aws_eip.bastion_eip.public_ip
}

output "private_instance_id" {
  value = aws_instance.private_ec2.id
}
