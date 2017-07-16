resource "aws_iam_role" "lambda" {
        name = "${format("Lambda-%v", var.function_name)}"

        assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "lambda_core" {
        name = "lambda_core"
        role = "${aws_iam_role.lambda.id}"

        policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
	"logs:CreateLogGroup",
	"logs:CreateLogStream",
	"logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:*:*"
    },
    {
      "Action": [
	"ec2:CreateNetworkInterface",
	"ec2:DescribeNetworkInterfaces",
	"ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": [ "*" ]
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "lambda_kms" {
	count = "${var.kms_key_arn != "" ? 1 : 0}"
        name = "lambda_kms"
        role = "${aws_iam_role.lambda.id}"

        policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
}

