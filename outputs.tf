output "ids" {
  value = module.ids.ids
}

output "numbers" {
  value = module.numbers.*.result
}

output "pets" {
  value = join(", ", module.pets.names)
}
