variable "acl" {
	default = "private"
	description = "The default access control for the bucket"
}

variable "bucket_name" {
	description = "The name of the bucket to create"
}

variable "bucket_region" {
	description = "The AWS Region in which to create the bucket"
}

variable "force_destroy" {
	default = true
	description = "Deletes any records in the bucket prior to destroying the bucket"
}

variable "tag_name" {
	default = ""
	description = "The value applied to the Name tag for the bucket"
}

variable "tag_role" {
	default = ""
	description = "The value applied to the Role tag for the bucket"
}

variable "versioning" {
	default = false
	description = "True if versioning is required for this bucket"
}

