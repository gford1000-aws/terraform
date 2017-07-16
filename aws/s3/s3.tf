resource "aws_s3_bucket" "non_replicated_bucket" {
	bucket   = "${var.bucket_name}"
	acl      = "${var.acl}"
	force_destroy = "${var.force_destroy}"
	versioning {
		enabled = "${var.versioning}"
	}
	tags {
		Name = "${var.tag_name}"
		Role = "${var.tag_role}"
	}
}
