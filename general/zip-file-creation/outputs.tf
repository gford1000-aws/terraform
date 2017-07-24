output "file_name" {
	value = "${format("%v/%v", var.zip_file_folder, data.template_file.zip_name.rendered)}"

	depends_on = [ "null_resource.create_zipfile" ]
}