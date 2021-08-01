# Get test functions ----
vw_test <- function(
	pkg=".",
	filter=NULL,
	stop_on_failure=FALSE,
	export_all=TRUE,
	...
){
	fCall <- match.call()
	fCall[[1]] <- quote(devtools::test)
	wrapper(fCall)
}

vw_test_active_file <- function(
	file=find_active_file(),
	...
){
	fCall <- match.call()
	fCall[[1]] <- quote(devtools::test_active_file)
	wrapper(fCall)
}

vw_test_coverage <- function(
	pkg=".",
	show_report=interactive(),
	...
){
	fCall <- match.call()
	fCall[[1]] <- quote(devtools::test_coverage)
	wrapper(fCall)
}

vw_test_coverage_active_file <- function(
	file=find_active_file(),
	filter=TRUE,
	show_report=interactive(),
	export_all=TRUE,
	...
){
	fCall <- match.call()
	fCall[[1]] <- quote(devtools::test_coverage_active_file)
	wrapper(fCall)
}
