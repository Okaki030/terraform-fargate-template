resource "aws_iam_user" "github" {
  name   = "${local.system_name}-github"
  
  tags = {
      Name = "${local.system_name}-github"
  }
}