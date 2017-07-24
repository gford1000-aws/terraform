module "zip" {
	source = "github.com/gford1000-aws/terraform//general/zip-file-creation"
	
	zip_file_name = "${uuid()}"
	zip_file_folder = "/tmp"
	code_folder = "${var.code_folder}"
	library_folders = "${var.library_folders}"
}

resource "aws_s3_bucket_object" "move_to_s3" {
	bucket = "${var.s3_bucket}"
	key    = "${var.s3_key_prefix != "" ? format("%v/%v", var.s3_key_prefix, basename(module.zip.file_name)) : basename(module.zip.file_name)) }"
	source = "${module.zip.file_name}"
	etag   = "${md5(file("module.zip.file_name"))}"

	depends_on = [ "module.zip" ]
}

resource "null_resource" "remove_zip" {
	provisioner "local-exec" {
		command = "rm -f ${module.zip.file_name}"
	}
	
	triggers {
		trigger = "${uuid()}"
	}

	depends_on = [ "aws_s3_bucket_object.move_to_s3" ]
}
