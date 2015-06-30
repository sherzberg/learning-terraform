
# setup up the docker terraform provider
provider "docker" {
    host = "tcp://192.168.59.103:2376/"
}

# Ensure the `alpine` docker image is present on the host
resource "docker_image" "pingservice" {
    name = "containera/pingservice"
}

resource "docker_container" "pinger" {
    name = "pinger"
    image = "${docker_image.pingservice.latest}"

    ports {
        internal = 4000
        external = 4000
    }

}
