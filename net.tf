# CREATE Network and Subnet
resource "openstack_networking_network_v2" "fdc_network" {
 name = "${var.fdc_network}"
 admin_state_up = "true"
}
resource "openstack_networking_subnet_v2" "fdc_subnet" {
 name = "${var.fdc_subnet}"
 network_id = "${openstack_networking_network_v2.fdc_network.id}"
 cidr = "${var.cidr}"
}
#CREATE ROUTER
resource "openstack_networking_router_v2" "fdc_router" {
 name = "${var.fdc_router}"
 external_gateway = "${var.public_pool_id}"
}
resource "openstack_networking_router_interface_v2" "fdc_network_itf" {
 router_id = "${openstack_networking_router_v2.fdc_router.id}"
 subnet_id = "${openstack_networking_subnet_v2.fdc_subnet.id}"
}

