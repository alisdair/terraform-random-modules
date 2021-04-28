variable "prefixes" {
  type = set(string)
}

resource "random_pet" "pet" {
  keepers = {
    uuid = uuid()
  }

  for_each = var.prefixes
  prefix   = module.unique_prefix[each.value].output

  provisioner "local-exec" {
    command = "sleep ${6 + 5 * length(each.value)}"
  }
}

module "unique_prefix" {
  source = "./unique_prefix"

  for_each = var.prefixes

  input = each.value
}

output "names" {
  value = [for pet in random_pet.pet : pet.id]
}
