resource "openstack_compute_secgroup_v2" "icmp" {
  name = "icmp"
  description = "Allows Web access to the RP-LB server"
}
resource "openstack_compute_secgroup_v2" "ssh" {
  description = "Allows SSH access to "
  name = "allow-ssh"
}

resource "openstack_networking_secgroup_rule_v2" "inbound_ping" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "icmp"
  remote_ip_prefix = var.home_ip
  security_group_id = openstack_compute_secgroup_v2.icmp.id
}

resource "openstack_networking_secgroup_rule_v2" "inbound_ssh" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  remote_ip_prefix = var.home_ip
  port_range_min = 22
  port_range_max = 22
  security_group_id = openstack_compute_secgroup_v2.ssh.id
}
