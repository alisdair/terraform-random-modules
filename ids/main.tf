variable "ids" {
  type = number
}

resource "random_id" "id" {
  keepers = {
    uuid = uuid()
  }

  count = var.ids

  byte_length = 8

  provisioner "local-exec" {
    command = "ls"
  }
}

output "ids" {
  value = random_id.id.*.id
}
