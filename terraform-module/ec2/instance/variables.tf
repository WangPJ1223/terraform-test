variable "machine_type" {
  description = "instance type"
  type        = string
}

variable "machine_name" {
  description = "instance name"
  type        = string
}

variable "security_groups_ids" {
  description = "instance name"
  type        = list(any)
}
