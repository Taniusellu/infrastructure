terraform {
backend "s3" {
bucket = "ansible-tower-taniusha"
key = "tower/us-east-1/tools/tools/tower.tfstate"
region = "us-east-1"
  }
}
