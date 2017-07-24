variable "zip_file_name" {
	description = "Name of the zip file to be created.  The module will append the zip extension if missing"
	type = "string"
}

variable "zip_file_folder" {
	description = "Location where the zip file should be created.  This folder must already exist"
	type = "string"
}

variable "code_folder" {
	description = "Location of the primary code files, relative to ${path.module}.  All files in this folder, and any sub-folders, will be added to the zip"
	type = "string"
}

variable "library_folders" {
	type = "list"
	description = "List of folders containing additional (library) code files.  Up to 10 folders are supported.  All files in the specified folder and any sub-folders, will be added"
	default = []
}
