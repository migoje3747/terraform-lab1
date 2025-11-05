# Crear una imagen de Nginx
resource "docker_image" "nginx" {
#   name = "nginx:latest"
  name = var.imagen
}

# Crear un contenedor a partir de la imagen
resource "docker_container" "web" {
  name  = "web_server"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8080
  }
}
