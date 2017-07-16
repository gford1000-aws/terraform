provider "aws" {
	region = "${var.bucket_region}"
}

provider "aws" {
	alias = "replication"
	region = "${var.replication_bucket_region}"
}

