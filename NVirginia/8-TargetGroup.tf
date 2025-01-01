resource "aws_lb_target_group" "nvirginia_tg" {
  name     = "nvirginia-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.nvirginiavpc.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "nvirginiaTargetGroup"
  }
}


/*resource "aws_lb_target_group" "app2_tg_443" {
  name     = "app2-tg-443"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.app1.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "app2_tg_443 "
    Owner   = "User"
    Project = "Web Service"
  }
}*/