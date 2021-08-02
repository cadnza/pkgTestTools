# Get function to load resource from inst ----
resource <- function(path){
	root <- rprojroot::find_package_root_file()
	instDir <- "inst"
	pathInstalled <- file.path(root,path)
	if(file.exists(pathInstalled)){
		return(pathInstalled)
	}else{
		pathUninstalled <- file.path(root,instDir,path)
		return(pathUninstalled)
	}
}
