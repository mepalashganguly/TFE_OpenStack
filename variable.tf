variable "os_auth_url" {
       default = "http://192.168.0.110/identity"
}
variable "os_tenant_name" {
	default = "admin"
}

variable "os_user_name" {
	default = "admin"
}

variable "os_password" {
       default = "1"
}
variable "os_insecure" {
	default = "true"
}
variable "domain" {
       default = "Default"
}
variable "role" {
	default = "fdc_role"
}
######Network + SubNet + Router####################
variable "cidr" {
       default = "192.168.0.0/24"
}
variable "public_pool_id" {
  default = "56dc6f1f-3151-4dc5-8e64-384feee78ee2"
}
variable "fdc_router" {
	default = "fdc_router"
}
variable "fdc_subnet" {
	default = "fdc_subnet"
}
variable "fdc_network" {
	default = "fdc_network"
}
########Sec-Group############
variable "secgroup" {
       default = "fdc_secgroup"
}
variable "image" {
 default = "d4543b50-a721-401a-8f58-38a861a3786c"
}
variable "flavor" {
  default = "cirros256"
}
variable "pool" {
       default = "public"
}
#variable "count" {
#  default = 1
#}
variable key {
 default = "key"
}
