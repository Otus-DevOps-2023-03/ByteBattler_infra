variable "public_key_path" {
  # Описание переменной
  description = "~/.ssh/ubuntu.pub"
}
variable app_disk_image {
description = "Disk image for reddit app"
default = "fd817rr9pbbdlej3qu51"
}
variable subnet_id {
description = "Subnets for modules"
}
