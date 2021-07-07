output "icmp_id" {
  value = openstack_compute_secgroup_v2.icmp.id
}

output "ssh_id" {
  value = openstack_compute_secgroup_v2.ssh.id
}

output "ip" {
  value = openstack_compute_instance_v2.instance.access_ip_v4
}
