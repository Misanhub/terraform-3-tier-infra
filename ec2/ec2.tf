resource "aws_security_group" "web-server-sg" {
  name        = "allow_tls"
  description = "Allow HTTPS traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [var.vpc_cidr]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-web-server"
 
  })
}

resource "aws_instance" "web-server" {
  ami           = var.image_id
  instance_type = var.instance_type
  subnet_id = var.public_subnet_1
  vpc_security_group_ids = [aws_security_group.web-server-sg.id]

  tags = merge(var.tags, {
    Name = "${var.tags["project"]}-${var.tags["application"]}-${var.tags["environment"]}-web-server"
 
  })
}