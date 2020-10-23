resource "aws_key_pair" "mykey-id" {
  key_name   = "olukey"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

module "Prometheus" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "Promotheus_Server"
  instance_count = 1

  ami                    = "ami-0db632efde132b0cc"
  instance_type          = "t2.micro"
  key_name               = "olukey"
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.sg-dev.id]
  subnet_id              = module.vpc.private_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "Prometheus_Server"
  }
}

module "Grafana" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name           = "_Server"
  instance_count = 1

  ami                    = "ami-0db632efde132b0cc"
  instance_type          = "t2.micro"
  key_name               = "olukey"
  associate_public_ip_address = true
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.sg-dev.id]
  subnet_id              = module.vpc.public_subnets [0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Name        = "Grafana_Server"
  }
}

