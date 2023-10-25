output "container-name" {
  value       = docker_container.nodered_container[*].name
  description = "The name of the container"
}

output "container-ip" {
  value       = [for i in docker_container.nodered_container[*] : join(":", [i.network_data[0]["ip_address"]], i.ports[*]["external"])]
  description = "The IP Address and external port of the container"
}
