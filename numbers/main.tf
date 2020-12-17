resource "random_integer" "int" {
  keepers = {
    uuid = uuid()
  }

  min = 0
  max = 30

  provisioner "local-exec" {
    command = "sleep ${self.result}"
  }
}

output "result" {
  value = random_integer.int.result
}
