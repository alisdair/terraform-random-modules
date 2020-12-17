variable "ids" {
  default = 15
}

variable "numbers" {
  default = 3
}

variable "server_types" {
  type = set(string)
  default = ["db", "backend", "ember"]
}
