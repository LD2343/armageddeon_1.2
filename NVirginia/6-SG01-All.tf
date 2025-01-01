resource "aws_security_group" "TG01-SG01-nvirginia" {
  name        = "TG01-SG01-nvirginia"
  description = "TG01-SG01-nvirginia"
  vpc_id      = aws_vpc.nvirginiavpc.id

  ingress {
    description = "TG01-SG01-nvirginia"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "icmp"
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "MyEvilBox"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "TG01-SG01-nvirginia"
  }

}





resource "aws_security_group" "LB01-SG01-nvirginia" {
  name        = "LB01-SG01-nvirginia"
  description = "LB01-SG01-nvirginia"
  vpc_id      = aws_vpc.nvirginiavpc.id

  ingress {
    description = "TG01-SG01-nvirginia"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  /*ingress {
    description = "Secure"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }*/

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "LB01-SG01-nvirginia"
  }

}

/*resource "aws_security_group" "Syslog-SG01-nvirginia" {
  name        = "Syslog-SG01-nvirginia"
  description = "Syslog-SG01-nvirginia"
  vpc_id      = aws_vpc.nvirginiavpc.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Syslog"
    from_port   = 514
    to_port     = 514
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "Syslog-SG01-nvirginia"
  }

}*/
