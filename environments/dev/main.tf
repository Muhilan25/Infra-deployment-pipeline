module "vpc" {
  source = "../../modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  availability_zone = "${var.aws_region}a"  #ap-south-1a
  env = "dev"
}
module "ec2" {
  source = "../../modules/ec2"
  ami_id = "ami-0d54604676873b4ec"
  instance_type = "t2.micro"
  subnet_id = module.vpc.subnet-id
   ec2_count = 1
  env = "dev"
}