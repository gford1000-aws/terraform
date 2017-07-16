resource "aws_lambda_function" "lambda" {
	function_name = "${var.function_name}"
	role = "${aws_iam_role.lambda.arn}"
	handler = "${var.handler_name}"
	kms_key_arn = "${var.kms_key_arn}"
	runtime = "${var.runtime}"
	memory_size = "${var.memory_size}"
	s3_bucket = "${var.source_s3_bucket}"
	s3_key = "${var.source_s3_key}"
	vpc_config = {
		subnet_ids = ["${split(",", var.subnet_ids)}"]
		security_group_ids = ["${concat(compact(split(",", var.security_groups)), list(aws_security_group.lambda.id))}"]
	}

	environment {
		variables = "${var.environment_variables}"
	}
}
