variable "public_key_path" {
  # Описание переменной
  description = "~/.ssh/ubuntu.pub"
}
variable db_disk_image {
description = "Disk image for reddit db"
default = "fd8mih2m0ekoac9qq00q"
}
variable subnet_id {
description = "Subnets for modules"
}
