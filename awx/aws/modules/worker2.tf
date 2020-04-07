resource "aws_vpc" "worker2" {
  provider		      = "aws.region3"
  cidr_block        = "10.0.0.0/16"
  tags = {
    Name = "Tower"
  } 
}
resource "aws_subnet" "worker2" {
  provider		      = "aws.region3"
  vpc_id     = "${aws_vpc.worker2.id}"
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Tower"
  }
}

resource "aws_internet_gateway" "worker2" {
  provider		      = "aws.region3"
  vpc_id = "${aws_vpc.worker2.id}"

  tags = {
    Name = "Tower"
  }
}

resource "aws_route_table_association" "worker2" {
  provider		      = "aws.region3"
  subnet_id      = "${aws_subnet.worker2.id}"
  route_table_id = "${aws_route_table.worker2.id}"
}


resource "aws_route_table" "worker2" {
  provider		      = "aws.region3"
  vpc_id = "${aws_vpc.worker2.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.worker2.id}"
  }
  tags = {
    Name = "Tower"
  }
}


resource "aws_security_group" "worker2" {
  provider	=	"aws.region3"
  name        = "allow_ssh_and_awx"
  description = "Allow SSH and awx"
  vpc_id      = "${aws_vpc.worker2.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Tower"
  } 
}



data "aws_ami" "centos-region3" {
  provider    = "aws.region3"
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

resource "aws_key_pair" "ansible_key3" {
  provider	=	"aws.region3"
  key_name   = "ansible"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}





module "worker2" {
  source = "terraform-aws-modules/autoscaling/aws"
  version = "2.2.2"
  # Launch configuration
  lc_name = "worker2"
  image_id        = "${data.aws_ami.centos-region3.id}"
  instance_type   = "t2.micro"
  key_name                    = "ansible"
  associate_public_ip_address = "true"
  security_groups = ["${aws_security_group.worker2.id}"]
  # Auto scaling group
  name                  = "worker2"
  vpc_zone_identifier       = ["${aws_subnet.worker2.id}"]
  health_check_type         = "EC2"
  min_size                  = 0
  max_size                  = 3
  desired_capacity          = 3
  wait_for_capacity_timeout = 0

  tags_as_map = {
    Name = "worker2"
  }
}