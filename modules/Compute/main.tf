# create instance for jenkins
resource "aws_instance" "jenkins" {
  ami                         = var.ami_web
  instance_type               = "t2.micro"
  subnet_id                   = var.public_subnets-1
  vpc_security_group_ids      = [var.compute-sg]
  associate_public_ip_address = true
  key_name                    = var.keypair

  tags = merge(
    var.tag,
    {
      Name = "ACS-jenkins"
    },
  )
}


#create instance for sonarqube
resource "aws_instance" "sonarqube" {
  ami                         = var.ami_sonar
  instance_type               = "t2.medium"
  subnet_id                   = var.public_subnets-1
  vpc_security_group_ids      = [var.compute-sg]
  associate_public_ip_address = true
  key_name                    = var.keypair


  tags = merge(
    var.tag,
    {
      Name = "ACS-sonar"
    },
  )
}

# create instance for artifactory
resource "aws_instance" "artifactory" {
  ami                         = var.ami_web
  instance_type               = "t2.medium"
  subnet_id                   = var.public_subnets-1
  vpc_security_group_ids      = [var.compute-sg]
  associate_public_ip_address = true
  key_name                    = var.keypair


  tags = merge(
    var.tag,
    {
      Name = "ACS-artifactory"
    },
  )
}