resource "random_pet" "server" {
  keepers = {
    # Generate a new pet name each time we switch to a new location
    location = "${var.location}"
  }
}

resource "azurerm_resource_group" "test" {
  name     = "${coalesce(var.resource_group_name, random_pet.server.id)}"
  location = "${var.location}"
}

output "name" {
  value = "${azurerm_resource_group.test.name}"
}
