variable "region" {
  default = "eu-west-2"
}
variable "instance_count" {
  default = "2"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_cidr" {
  default = "10.8.0.0/16"
}

variable "private_subnets" {
  default = ["10.8.1.0/24", "10.8.2.0/24","10.8.3.0/24"]
}

variable "public_subnets" {
  default = ["10.8.10.0/24", "10.8.20.0/24","10.8.30.0/24"]
}

variable "subnet_id" {
  default = "subnet-0ffbe71882deab7b5"
}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "white_listed_entrants" {

  default = ["87.80.20.214/32", "0.0.0.0/0"]

}
variable "PATH_TO_PUBLIC_KEY" {
  default = "olukey.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "olukey"
}
