resource "aws_lb_target_group" "test" {
  name     = "${local.name}-${var.tags.Component}"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}