variable "input" {
  type = string
}

resource "random_uuid" "unique" {
  keepers = {
    input = var.input
  }
}

output "output" {
  value = "${upper(var.input)}-${random_uuid.unique.id}-"
}
