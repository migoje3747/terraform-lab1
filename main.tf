# Crear una imagen de Nginx
resource "docker_image" "nginx" {
  #   name = "nginx:latest"
  name = var.imagen
}

# Crear un contenedor de Nginx a partir de la imagen
resource "docker_container" "web" {
  name  = var.web_container_name
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = var.web_external_port
  }
}

# Crear una imagen de Redis
resource "docker_image" "redis" {
  name = "redis:latest"
}

# Contenedor Redis
resource "docker_container" "redis" {
  name  = "redis_server"
  image = docker_image.redis.image_id
  ports {
    internal = 6379
    external = 6379
  }

  # Dependencia: Contenedor Redis depende de contenedor web
  depends_on = [docker_container.web]
}
