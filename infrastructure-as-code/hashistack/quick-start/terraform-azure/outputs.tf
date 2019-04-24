output "lb_fqdn" {
  value = "${module.hashistack_azure.lb_fqdn}"
}

output "bastion_ssh_string" {
  value = "ssh -i id_rsa_${var.name} ${var.admin_username}@${module.network_azure.bastion_fqdns}"
}

output "asg_ssh_string" {
  value = "${module.hashistack_azure.quick_ssh_string}"
}

output "nomad_ui" {
  value = "http://${module.network_azure.bastion_fqdns}:4646"
}

output "vault_ui" {
  value = "http://${module.network_azure.bastion_fqdns}:8200"
}

output "consul_ui" {
  value = "http://${module.network_azure.bastion_fqdns}:8500"
}