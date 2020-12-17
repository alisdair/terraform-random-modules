variable "ids" {
  default = 3
}

variable "numbers" {
  default = 10
}

variable "server_types" {
  type = set(string)
  default = ["db", "backend", "ember"]
}
