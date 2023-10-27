# output "container-name" {
#   value       = module.container[*].container-name
#   description = "The name of the container"
# }

# output "container-ip" {
#   value       = flatten(module.container[*].container-ip)
#   description = "The IP Address and external port of the container"
# }


# output "host-testing-link" {
#   value       = join(":", ["http", "//localhost", docker_container.nodered_container[0].ports[0].external])
#   description = "The link to perform test from the host machine"
# }