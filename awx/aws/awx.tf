module "awx" {
  providers = {
    aws1 = "aws.region1"
    aws2 = "aws.region2"
    aws3 = "aws.region3"
    aws4 = "aws.management_region"
  }
  source            = "./modules"
  user              = "${var.user}"
  domain            = "${var.domain}"
  region1_vpc_id    = "${var.region1_vpc_id}"
  region2_vpc_id     = "${var.region2_vpc_id}"
  region3_vpc_id     = "${var.region3_vpc_id}"
  management_region_vpc_id  = "${var.management_region_vpc_id}"
  management_region = "${var.management_region}"
  zone_id           = "${var.zone_id}"
  key_name          = "${var.key_name}"
  instance_type     = "${var.instance_type}"
  ssh_key_location  = "${var.ssh_key_location}"
}

