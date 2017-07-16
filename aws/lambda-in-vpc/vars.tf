variable "function_name" {
	description = "The name of the lambda function"
	type = "string"
}

variable "handler_name" {
	default = "index.lambda_handler"
	description = "The entry point for the lambda function"
	type = "string"
}

variable "environment_variables" {
	default = {}
	description = "Map of environment variables to their values"
	type = "map"
}

variable "memory_size" {
	default = 128
	description = "The maximum memory that the lambda function can use during execution"
	type = "string"
}

variable "kms_key_arn" {
	default = ""
	description = "The Arn of the KMS key to decrypt environment variables"
	type = "string"
}

variable "runtime" {
	default = "python2.7"
	description = "The runtime environment for the lambda function"
	type = "string"
}

variable "timeout" {
	default = 5
	description = "The maximum execution time (in seconds) of the lambda function"
	type = "string"
}

variable "security_groups" {
	default = ""
	description = "String consisting of a comma separated list of security groups to apply to the lambda function"
	type = "string"
}

variable "source_s3_bucket" {
	description = "Bucket containing the zip of the lambda function code"
	type = "string"
}

variable "source_s3_key" {
	description = "Key in S3 bucket locating the zip of the lambda function code"
	type = "string"
}

variable "subnet_ids" {
	description = "String consisting of a comma separated list of subnet ids to be used by the lambda"
	type = "string"
}

variable "vpc_id" {
	description = "The Id of the VPC containing the subnets"
	type = "string"
}
