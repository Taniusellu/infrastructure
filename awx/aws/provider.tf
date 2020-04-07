provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias = "region1"
  region = "${var.region1}"
}
provider "aws" {
  alias = "region2"
  region = "${var.region2}"
}
provider "aws" {
  alias = "region3"
  region = "${var.region3}"
}
provider "aws" {
  alias = "region4"
  region = "${var.region4}"
}
provider "aws" {
  alias = "region5"
  region = "${var.region5}"
}
