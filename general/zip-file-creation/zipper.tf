resource "null_resource" "delete_prior_zipfile" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${var.code_folder}; rm -f $FZ/${data.template_file.zip_name.rendered}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}
}

resource "null_resource" "create_zipfile" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${var.code_folder}; zip -r $FZ/${data.template_file.zip_name.rendered} * "
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.delete_prior_zipfile" ]
}

resource "null_resource" "append_zipfile_0" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 0)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 0)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.create_zipfile"  ]
	count = "${length(var.library_folders) > 0 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_1" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 1)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 1)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_0"  ]
	count = "${length(var.library_folders) > 1 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_2" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 2)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 2)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_1"  ]
	count = "${length(var.library_folders) > 2 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_3" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 3)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 3)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_2"  ]
	count = "${length(var.library_folders) > 3 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_4" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 4)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 4)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_3"  ]
	count = "${length(var.library_folders) > 4 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_5" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 5)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 5)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_4"  ]
	count = "${length(var.library_folders) > 5 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_6" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 6)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 6)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_5"  ]
	count = "${length(var.library_folders) > 6 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_7" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 7)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 7)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_6"  ]
	count = "${length(var.library_folders) > 7 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_8" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 8)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 8)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_7"  ]
	count = "${length(var.library_folders) > 8 ? 1 : 0}"
}

resource "null_resource" "append_zipfile_9" {
	provisioner "local-exec" {
		command = "cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 9)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 9)}"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_8"  ]
	count = "${length(var.library_folders) > 9 ? 1 : 0}"
}

