#provider "openstack" {
# auth_url    = "${var.os_auth_url}"
# tenant_name = "${var.os_tenant_name}"
# user_name   = "${var.os_user_name}"
# password    = "${var.os_password}"
# insecure    = "${var.os_insecure}"
# domain_name = "${var.domain}"
#}

provider "openstack" {
 auth_url    = "http://192.168.0.110/identity"
 tenant_name = "admin"
 user_name   = "admin"
 password    = "1"
 insecure    = "true"
 domain_name = "Default"
}

resource "openstack_compute_instance_v2" "suse-image-vm" {
 name            = "suse-image-vm"
 count		 = 1
 image_id        = "${var.image}"
 flavor_name     = "${var.flavor}"
 key_pair        = "${var.os_tenant_name}"
 security_groups = ["${openstack_networking_secgroup_v2.my_secgroup.id}"]
 network {
    uuid = "${openstack_networking_network_v2.fdc_network.id}"
 }
}

