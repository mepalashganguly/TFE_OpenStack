resource "openstack_networking_floatingip_v2" "fip_1" {
 pool = "public"
 count = "1"
}
#resource "openstack_compute_floatingip_associate_v2" "fip_1" {
# count = "1"
# floating_ip = "${element(openstack_networking_floatingip_v2.fip_1.*.address, count.index)}"
# instance_id = "${element(openstack_compute_instance_v2.vm.*.id, count.index)}"
#}
#
