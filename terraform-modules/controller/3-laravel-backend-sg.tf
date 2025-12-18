resource "aws_security_group" "laravel_backend" {
  name        = "laravel-backend-sg"
  description = "Security group for Laravel Backend API"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    security_groups = [aws_security_group.nginx_ingress.id]  # Allow access from NGINX Ingress Controller
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    security_groups = [aws_security_group.nginx_ingress.id]  # Allow access from NGINX Ingress Controller
  }

 /* ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["<Bastion_Host_IP>/32"]  # Allow SSH access from Bastion host or management network
  }   */

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Allow all outbound traffic
  }
}
