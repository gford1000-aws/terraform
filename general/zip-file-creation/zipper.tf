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
		command = "if [ ${length(var.library_folders)} -gt 0 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 0)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 0)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.create_zipfile"  ]
}

resource "null_resource" "append_zipfile_1" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 1 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 1)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 1)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_0"  ]
}

resource "null_resource" "append_zipfile_2" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 2 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 2)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 2)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_1"  ]
}

resource "null_resource" "append_zipfile_3" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 3 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 3)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 3)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_2"  ]
}

resource "null_resource" "append_zipfile_4" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 4 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 4)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 4)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_3"  ]
}

resource "null_resource" "append_zipfile_5" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 5 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 5)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 5)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_4"  ]
}

resource "null_resource" "append_zipfile_6" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 6 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 6)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 6)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_5"  ]
}

resource "null_resource" "append_zipfile_7" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 7 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 7)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 7)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_6"  ]
}

resource "null_resource" "append_zipfile_8" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 8 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 8)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 8)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_7"  ]
}

resource "null_resource" "append_zipfile_9" {
	provisioner "local-exec" {
		command = "if [ ${length(var.library_folders)} -gt 9 ]; then cd ${var.zip_file_folder}; export FZ=`pwd`; cd ${element(data.template_file.library_parent_folder.*.rendered, 9)}; zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 9)}; fi"
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}

	depends_on = [ "null_resource.append_zipfile_8"  ]
}

