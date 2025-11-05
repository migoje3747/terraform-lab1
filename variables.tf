variable "imagen" {
  type    = string
  default = "nginx:latest"
}

variable "web_container_name" {
  type    = string
  default = "web_server"
  description = "Nombre del contenedor web"
}

variable "web_external_port" {
  type    = number
  default = 8080
  description = "Puerto externo donde se expondrá el contenedor web"
}
