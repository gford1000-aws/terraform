resource "aws_s3_bucket" "replica_bucket" {
	provider = "aws.replication"
	bucket   = "${format("%v-replica", var.bucket_name)}"
	acl      = "private"
	force_destroy = "${var.force_destroy}"
	versioning {
		enabled = true
	}
	tags {
		Name = "${var.tag_name}"
		Role = "${var.tag_role}"
	}
}

resource "aws_s3_bucket" "replicated_bucket" {
        bucket   = "${var.bucket_name}"
        acl      = "${var.acl}"
        force_destroy = "${var.force_destroy}"
        versioning {
                enabled = true
        }
        tags {
                Name = "${var.tag_name}"
                Role = "${var.tag_role}"
        }
	replication_configuration {
		role = "${aws_iam_role.replication.arn}"

		rules {
			prefix = "${substr(var.bucket_replication_root, length(var.bucket_replication_root)-1, 1) != "/" ? format("%v/", var.bucket_replication_root) : var.bucket_replication_root}"
			status = "Enabled"
			
			destination {
				bucket = "${aws_s3_bucket.replica_bucket.arn}"
				storage_class = "STANDARD"
			}
		}
	}
}

