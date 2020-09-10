resource "openstack_compute_keypair_v2" "key" {
 name = "admin"
 public_key = "${file("key.pub")}"
}

