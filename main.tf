module "demo" {
  source = "./vendor/modules/demo"

  for_each      = var.ec2
  ami           = each.value.ami
  instance_type = each.value.instance_type

  env = var.env

}
