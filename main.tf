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
  triggers = {
    uuid = uuid()
  }
  count = 5
}

output "fail" {
  value = jsondecode(null_resource.none[0].id)
}
