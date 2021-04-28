variable "input" {
  type = string
}

resource "random_uuid" "unique" {
}

output "output" {
  value = "${upper(var.input)}-${random_uuid.unique.id}-"
}
