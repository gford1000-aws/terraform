variable "lambda_code_folder" {
	description = "Location of the primary lambda code files.  All files in this folder, and any sub-folders, will be added to the zip"
	type = "string"
}

variable "library_folders" {
	type = "list"
	description = "List of folders containing additional (library) code files.  Up to 10 folders are supported.  All files in the specified folder and any sub-folders, will be added"
	default = []
}

variable "s3_bucket" {
	type = "string"
	description = "S3 bucket to which the zip will be uploaded"
}

variable "s3_key_prefix" {
	type = "string"
	description = "Optional prefix to the S3 key to which the zip will be saved"
	default = ""
}
