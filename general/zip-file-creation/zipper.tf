resource "null_resource" "create_zipfile" {
	provisioner "local-exec" {
		command = <<EOF
cd ${var.zip_file_folder}
export FZ=`pwd`
cd ${var.code_folder}
rm -f $FZ/${data.template_file.zip_name.rendered}
zip -r $FZ/${data.template_file.zip_name.rendered} * 
if [ ${length(var.library_folders)} -gt 0 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 0)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 0)}
fi
if [ ${length(var.library_folders)} -gt 1 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 1)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 1)}
fi
if [ ${length(var.library_folders)} -gt 2 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 2)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 2)}
fi
if [ ${length(var.library_folders)} -gt 3 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 3)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 3)}
fi
if [ ${length(var.library_folders)} -gt 4 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 4)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 4)}
fi
if [ ${length(var.library_folders)} -gt 5 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 5)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 5)}
fi
if [ ${length(var.library_folders)} -gt 6 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 6)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 6)}
fi
if [ ${length(var.library_folders)} -gt 7 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 7)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 7)}
fi
if [ ${length(var.library_folders)} -gt 8 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 8)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 8)}
fi
if [ ${length(var.library_folders)} -gt 9 ]
then
	cd ${element(data.template_file.library_parent_folder.*.rendered, 9)}
	zip -rg $FZ/${data.template_file.zip_name.rendered} ${element(data.template_file.library_folder.*.rendered, 9)}
fi
EOF
	}

	triggers {
		code_changed_trigger = "${uuid()}"
	}
}

