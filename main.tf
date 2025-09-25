terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      # choose a stable provider version; adjust as needed
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  # Linux / macOS (WSL if using): unix socket
  host = "unix:///var/run/docker.sock"

  # If you're on Windows using Docker Desktop, uncomment the Windows pipe line instead:
  # host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name = "nginx:alpine"
  # keep_locally = false   # optional
}

resource "docker_container" "nginx" {
  name  = "nginx_terraform"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}

output "container_name" {
  value = docker_container.nginx.name
}
output "container_id" {
  value = docker_container.nginx.id
}
