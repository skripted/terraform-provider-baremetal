variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {}
variable "region" {}

provider "baremetal" {
  tenancy_ocid = "${var.tenancy_ocid}"
  user_ocid = "${var.user_ocid}"
  fingerprint = "${var.fingerprint}"
  private_key_path = "${var.private_key_path}"
  region = "${var.region}"
}

resource "baremetal_core_virtual_network" "vcn1" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vnc1"
  compartment_id = "${var.compartment_ocid}"
  display_name = "vnc1"
}
