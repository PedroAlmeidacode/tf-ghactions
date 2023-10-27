# output "container-name" {
#   value       = module.container[*].container-name
#   description = "The name of the container"
# }

# output "container-ip" {
#   value       = flatten(module.container[*].container-ip)
#   description = "The IP Address and external port of the container"
# }


# output "host-testing-link" {
#   value       = join(":", ["http", "//localhost", docker_container.app_container[0].ports[0].external])
#   description = "The link to perform test from the host machine"
# }


output "application_access" {
    value = [for x in module.container[*]: x]
    description = "The name and socket for each application"
}