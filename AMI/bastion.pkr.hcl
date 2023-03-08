variable "region" {
  type    = string
  default = "eu-west-3"
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}


# source blocks are generated from your builders; a source can be referenced in
# build blocks. A build block runs provisioners and post-processors on a
# source.
source "amazon-ebs" "ami-bastion-prj-19" {
  ami_name      = "ami-bastion-prj-19-${local.timestamp}"
  vpc_id        = "vpc-0e4ac4ce4675164b2"
  subnet_id     = "subnet-0c237d5ec176c9ea6"
  instance_type = "t2.micro"
  region        = var.region
  source_ami_filter {
    filters = {
      name                = "RHEL-8.1.0_HVM-20210907-x86_64-0-Hourly2-GP2"
      # name                = "RHEL-9.0.0_HVM-20230127-x86_64-24-Hourly2-GP2"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["309956199498"]
  }
  ssh_username = "ec2-user"
  tag {
    key   = "Name"
    value = "ami-bastion-prj-19"
  }
}

# a build block invokes sources and runs provisioning steps on them.
build {
  sources = ["source.amazon-ebs.ami-bastion-prj-19"]

  provisioner "shell" {
    script = "bastion.sh"
  }
}