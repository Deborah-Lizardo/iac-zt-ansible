terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.0.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "web" {
  name  = "perimeter-intermediate-web"  # porta e nome diferente do basic
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8082  
  }
}


