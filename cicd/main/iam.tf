resource "aws_iam_user" "github" {
  name = "${local.system_name}-github"

  tags = {
    Name = "${local.system_name}-github"
  }
}

resource "aws_iam_role" "deployer" {
  name = "${local.system_name}-deployer"

  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "sts:AssumeRole",
            "sts:TagSession"
          ],
          "Principal" : {
            "AWS" : aws_iam_user.github.arn # example-prod-foobar-github のIAMユーザーからAssumeRoleが許可
          }
        }
      ]
    }
  )

  tags = {
    Name = "${local.system_name}-deployer"
  }
}

resource "aws_iam_role_policy_attachment" "role_deployer_ecr_power_user" {
  role       = aws_iam_role.deployer.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
}