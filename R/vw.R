# Get viewing function ----
vw <- function(x,title=NA){
	view_x <- x
	view_title <- ifelse(is.na(title),utils::capture.output(print(substitute(x))),title)
	save(
		view_x,
		view_title,
		file=tempfile(
			pattern=paste0(.GlobalEnv$.vwCtr,"_"),
			tmpdir=.GlobalEnv$.vwDir,
			fileext=".RData"
		)
	)
	.GlobalEnv$.vwCtr <- .GlobalEnv$.vwCtr+1
}
