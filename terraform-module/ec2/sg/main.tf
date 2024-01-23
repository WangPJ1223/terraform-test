resource "aws_default_vpc" "default" {
}

resource "aws_security_group" "web_server_sg_tf" {
 name        = "web-server-sg-tf"
 description = "Allow HTTPS to web server"
 vpc_id      = aws_default_vpc.default.id

    ingress {
        description = "HTTPS ingress"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = [var.your_cidr_block]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "tcp"
        cidr_blocks = [var.your_cidr_block]
    }
}
