variable "group_any" {
  type    = bool
  default = false
}

variable "name_any" {
  type    = string
  default = "any"
}

variable "group_internet" {
  type    = bool
  default = true
}

variable "name_internet" {
  type    = string
  default = "internet"
}

variable "group_rfc1918" {
  type    = bool
  default = true
}

variable "name_rfc1918" {
  type    = string
  default = "rfc1918"
}
