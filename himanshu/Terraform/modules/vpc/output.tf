output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.myvpc.id
}
output "public_subnet_id" {
  value = aws_subnet.pub-sub.id
}
