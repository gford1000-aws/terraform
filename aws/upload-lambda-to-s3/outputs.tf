output "s3_zip_key" {
	value = "${var.s3_key_prefix != "" ? format("%v/%v", var.s3_key_prefix, basename(module.zip.file_name)) : basename(module.zip.file_name)) }"

	depends_on = [ "null_resource.remove_zip" ]
}

output "s3_version_id" {
	value = "${aws_s3_bucket_object.move_to_s3.version_id}"

	depends_on = [ "null_resource.remove_zip" ]
}

output "s3_zip_etag" {
	value = "${aws_s3_bucket_object.move_to_s3.etag}"

	depends_on = [ "null_resource.remove_zip" ]
}
