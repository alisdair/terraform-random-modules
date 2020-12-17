module "ids" {
  source = "./ids"
  ids = var.ids
}

module "numbers" {
  source = "./numbers"
  count = var.numbers
}

module "pets" {
  source = "./pets"
  prefixes = var.server_types
}
