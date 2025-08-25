variable "public_subnet_id"  { type = string }
variable "private_subnet_id" { type = string }

variable "public_instance_ami"  { type = string }
variable "private_instance_ami" { type = string }

variable "instance_type" { type = string }
variable "key_name"      { type = string }

variable "public_instance_name"  { type = string }
variable "private_instance_name" { type = string }
