# TODO: Define the output variable for the lambda function.
output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}