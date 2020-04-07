#Creates key for region1  

# resource "aws_key_pair" "ansible_key2" {
#   provider	=	"aws.region2"
#   key_name   = "ansible"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }

# resource "aws_key_pair" "ansible_key3" {
#   provider	=	"aws.region3"
#   key_name   = "ansible"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }