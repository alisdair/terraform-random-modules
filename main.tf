module "ids" {
  source = "./ids"
  ids    = var.ids
}

module "numbers" {
  source  = "./numbers"
  numbers = var.numbers
}

module "pets" {
  source   = "./pets"
  prefixes = var.server_types
}

resource "null_resource" "none" {
  triggers = {
    uuid = uuid()
  }
  count = 5

  provisioner "local-exec" {
    command = "sleep ${1 + count.index * 2}"
  }
}
