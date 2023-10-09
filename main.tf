#dev
module "dev" {
  source        = "./modules"
  env           = "dev"
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}

#prod
module "prod" {
  source        = "./modules"
  env           = "prod"
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}

#test
module "test" {
  source        = "./modules"
  env           = "test"
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
}
