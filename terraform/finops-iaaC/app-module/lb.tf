/*
resource "aws_lb" "jenkins_alb" {
  name                       = "jenkins-alb"
  internal                   = false # Set to true if you want an internal ALB
  load_balancer_type         = "application"
  subnets                    = [aws_subnet.public-1a.id, aws_subnet.public-1b.id]
  security_groups            = [aws_security_group.alb_sg.id]
  enable_deletion_protection = false # Set to true if you want to enable deletion protection
}

resource "aws_lb_target_group" "jenkins_tg" {
  name     = "jenkins-tg"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc-finops.id
  health_check {
    path = "/"
  }
}

resource "aws_lb_listener" "jenkins_listener" {
  load_balancer_arn = aws_lb.jenkins_alb.arn
  port              = 80 # Port that the ALB listens on
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "application/json"
      message_body = "Nothing to see here"
      status_code  = "200"
    }
  }
}

resource "aws_lb_listener_rule" "jenkins_listener_rule" {
  listener_arn = aws_lb_listener.jenkins_listener.arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.jenkins_tg.arn
  }

  condition {
    path_pattern {
      values = ["/"] # Forward all traffic to the target group
    }
  }
}

resource "aws_security_group" "alb_sg" {
  name        = "jenkins-alb-sg"
  description = "Security group for the Jenkins ALB"
  vpc_id      = aws_vpc.vpc-finops.id
  // Allow incoming HTTP traffic (port 80) from the internet
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  // Allow outbound traffic to the internet
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/
