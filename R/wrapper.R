# Get wrapper function ----
wrapper <- function(functionCall){
	# Get temporary directory
	.GlobalEnv$.vwDir <- file.path(dirname(normalizePath(tempdir())),".vwTestDir")
	# Set counter for filenames
	.GlobalEnv$.vwCtr <- 1
	# Get expression to remove temporary directory
	rmTestDir <- expression(unlink(.GlobalEnv$.vwDir,recursive=TRUE))
	# Reset temporary directory
	eval(rmTestDir)
	dir.create(.GlobalEnv$.vwDir)
	# Run main function
	tryCatch(
		eval(functionCall),
		error=function(x)
			message(as.character(x))
	)
	# View each object set with vw
	pendingFiles <- list.files(.GlobalEnv$.vwDir)
	pendingFiles <- pendingFiles[
		order(
			sapply(
				pendingFiles,
				function(x)
					stringr::str_match(x,"^\\d+")
			)
		)
	]
	for(x in pendingFiles){
		load(normalizePath(file.path(.GlobalEnv$.vwDir,x)))
		View(view_x,view_title)
	}
	# Remove temporary directory
	eval(rmTestDir)
	# Clean up global variables
	rm(
		list=c(".vwDir",".vwCtr"),
		envir=.GlobalEnv
	)
}
