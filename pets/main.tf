variable "prefixes" {
  type = set(string)
}

resource "random_pet" "pet" {
  keepers = {
    uuid = uuid()
  }

  for_each = var.prefixes
  prefix   = each.value

  provisioner "local-exec" {
    command = "env"
  }
}

output "names" {
  value = [for pet in random_pet.pet : pet.id]
}
