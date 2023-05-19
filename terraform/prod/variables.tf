variable "cloud_id" {
  description = "b1gq0tgpncnmdj86qb9g"
}
variable "folder_id" {
  description = "b1g0m9shnqul2et4n6rm"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "~/.ssh/ubuntu.pub"
}
variable "image_id" {
  description = "fd8uhia8mo6pvp57tmul"
}
variable "subnet_id" {
  description = "e9b3h6f4udctlc726qpn"
}
variable "service_account_key_file" {
  description = "/home/alex/devops/terraform.json"
}
variable "private_key" {
  description = "~/.ssh/ubuntu"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd817rr9pbbdlej3qu51"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8mih2m0ekoac9qq00q"
}
