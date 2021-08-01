\name{vw}
\alias{vw}
\alias{vw_test}
\alias{vw_test_active_file}
\alias{vw_test_coverage}
\alias{vw_test_coverage_active_file}
\title{Test Reporting in Data Viewer}
\description{
When running tests via the \code{\link[devtools]{test}} series, it can be helpful to report objects in the session data viewer. These functions allow viewing data frames, lists, etc. upon running a test.
}
\usage{
vw(
  x,
  title=NA
)

vw_test(
  pkg=".",
  filter=NULL,
  stop_on_failure=FALSE,
  export_all=TRUE,
  ...
)

vw_test_active_file(
  file=find_active_file(),
  ...
)

vw_test_coverage(
  pkg=".",
  show_report=interactive(),
  ...
)

vw_test_coverage_active_file(
  file=find_active_file(),
  filter=TRUE,
  show_report=interactive(),
  export_all=TRUE,
  ...
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
  The object to view; see \code{\link[utils]{View}} for details.
	}
	\item{title}{
  An optional title for the data viewer; see \code{\link[utils]{View}} for details.
	}
	\item{pkg}{
	The package to use; see \code{\link[devtools]{test}} for details.
	}
	\item{filter}{
	An optional filter for tests to execute; see \code{\link[devtools]{test}} for details.
	}
	\item{stop_on_failure}{
	Whether to throw an error on test failure; see \code{\link[devtools]{test}} for details.
	}
	\item{export_all}{
	Whether to export all objects; see \code{\link[devtools]{test}} for details.
	}
	\item{file}{
	One or more source test files; see \code{\link[devtools]{test}} for details.
	}
	\item{show_report}{
	Whether to show the test coverage report; see \code{\link[devtools]{test}} for details.
	}
	\item{...}{
	Additional arguments passed to \code{\link[devtools]{test}} functions.
	}
}
\details{
These functions are all based on the testing functions provided by \code{\link[devtools]{test}} with the exception of \code{vw}, which is based on \code{\link[utils]{View}}.

To show a report in the data viewer upon invoking a test, call the \code{vw} function within your test in the same way that you would use \code{\link[utils]{View}}, \emph{e.g.} \code{vw(mtcars)} or \code{vw(letters,"Letters")}. Rather than testing with the \code{\link[devtools]{test}} series, call the appropriate corresponding function from this package, \emph{e.g.} \code{vw_test_active_file} instead of \code{\link[devtools]{test_active_file}}.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
\href{https://testthat.r-lib.org/}{Unit Testing for R - testthat}
}
\author{
\href{https://github.com/cadnza}{Jon Dayley}
}
\note{
Since these functions only work in a package testing context, no examples are provided. Please let me know if you have any questions about usage and I'll see what I can do about improving the documentation.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \itemize{
  \item \code{\link[utils]{View}}
  \item \code{\link[devtools]{test}}
  }
}
