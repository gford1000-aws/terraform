output "bucket_arn" {
	value = "${aws_s3_bucket.non_replicated_bucket.arn}"
}

output "bucket_region" {
	value = "${aws_s3_bucket.non_replicated_bucket.region}"
}
