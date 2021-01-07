variable "tier" {
  description = "DB tier"
  type = string
  default = "db-f1-micro"
}

variable "region" {
  description = "DB region"
  type = string
}

variable "name" {
  description = "DB name"
  type = string
  default = "my-instance"
}

variable "tenants" {
  description = "a database is created per tenant on the same instance"
  type = list(string)
  default = ["global"]
}