# output "container-name" {
#   value       = docker_container.nodered_container.name
#   description = "The name of the container"
# }

# output "container-ip" {
#   value       = [for i in docker_container.nodered_container[*] : join(":", [i.network_data[0]["ip_address"]], i.ports[*]["external"])]
#   description = "The IP Address and external port of the container"
# }


# output "host-testing-link" {
#   value       = join(":", ["http", "//localhost", docker_container.nodered_container[0].ports[0].external])
#   description = "The link to perform test from the host machine"
# }