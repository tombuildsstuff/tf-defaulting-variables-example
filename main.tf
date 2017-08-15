module "example" {
  source              = "./example"
  resource_group_name = "tom-hello"
  location            = "West Europe"
}

module "example2" {
  source   = "./example"
  location = "West Europe"
}
