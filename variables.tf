variable "sg" {
  type = list
  default =
    [openstack_compute_secgroup_v2.ssh.id,
    openstack_compute_secgroup_v2.icmp.id]
}

variable "name" {
  type = string
  default = "instance"
}