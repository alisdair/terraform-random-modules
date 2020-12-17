variable "prefixes" {
  type = set(string)
}

resource "random_pet" "pet" {
  for_each = var.prefixes
  prefix = each.value

  provisioner "local-exec" {
    command = "sleep ${5 * length(each.value)}"
  }
}

output "names" {
  value = [for pet in random_pet.pet: pet.id]
}
