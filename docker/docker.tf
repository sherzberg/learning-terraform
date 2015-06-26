
provider "docker" {
    host = "tcp://192.168.59.103:2376/"
}

resource "docker_image" "ubuntu" {
    name = "alpine"
}

