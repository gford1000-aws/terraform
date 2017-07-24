data "template_file" "zip_name" {
	template = "$${file_name}"
	vars {
		file_name = "${format("%v.zip", element(split(".", var.zip_file_name), 0))}"
	}
}

data "template_file" "library_folder" {
	template = "$${format("./%v/*", element(split("/", folder_name), length(split("/", folder_name))-1))}"
	vars {
		folder_name = "${element(var.library_folders, count.index)}"
	}
	count = "${length(var.library_folders)}"
}

data "template_file" "library_parent_folder" {
	template = "$${join("/", slice(split("/", folder_name), 0, length(split("/", folder_name))-1))}"
	vars {
		folder_name = "${element(var.library_folders, count.index)}"
	}
	count = "${length(var.library_folders)}"
}


