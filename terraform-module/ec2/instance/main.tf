locals {
  prefix = "tm-pjw"
}

data "aws_ami" "amazon_linux_2023" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-6.1-x86_64"]
  }

  owners = ["137112412989"]
}

resource "aws_instance" "example" {
  ami             = data.aws_ami.amazon_linux_2023.id
  instance_type   = var.machine_type
  security_groups = tolist(var.security_groups_ids)

  tags = {
    Name = "${local.prefix}_${var.machine_name}"
  }
}
