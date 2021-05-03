resource "openstack_compute_keypair_v2" "user" {
  name = "computer"
  public_key = file("/home/$USER/.ssh/id_rsa.pub")
}