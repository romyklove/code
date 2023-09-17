resource "aws_lightsail_instance" "gitlab_test" {
  name              = "custom-gitlab"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This server is creating using Terraform</h1>' | sudo tee /var/www/html/index.html"
}

output "instance_ip_address" {
  value = aws_lightsail_instance.gitlab_test.public_ip_address
}