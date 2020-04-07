module "awx" {
  providers = {
    aws1 = "aws.region1"
    aws2 = "aws.region2"
    aws3 = "aws.region3"
    aws4 = "aws.region4"
    aws5 = "aws.region5"

  }
  source            = "./modules"
  domain            = "${var.domain}"
  zone_id           = "${var.zone_id}"
}

