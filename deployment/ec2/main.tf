module "my_ec2_instance" {
    source = "../../terraform-module/ec2/instance"
    machine_name = var.machine_name
    machine_type = "t2.micro"
    security_groups_ids = [module.sg_my_ips.sg_id]
}

module "sg_my_ips" {
    source = "../../terraform-module/ec2/sg"
    your_cidr_block = var.your_cidr_block
}

