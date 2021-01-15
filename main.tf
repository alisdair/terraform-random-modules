module "ids" {
  source = "./ids"
  ids = var.ids
}

module "numbers" {
  source = "./numbers"
  numbers = var.numbers
}

module "pets" {
  source = "./pets"
  prefixes = var.server_types
}

resource "null_resource" "none" {
  count = 5
}

output "fail" {
  value = jsondecode(null_resource.none.id)
}
