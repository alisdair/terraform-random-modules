variable "ids" {
  type = number
}

resource "random_id" "id" {
  count = var.ids

  byte_length = 8

  provisioner "local-exec" {
    command = "sleep ${5 * count.index}"
  }
}

output "ids" {
  value = random_id.id.*.id
}
