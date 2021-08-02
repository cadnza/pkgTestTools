\name{resource}
\alias{resource}
\title{Resource Loading from \code{./inst}}
\description{
\href{https://cran.r-project.org/doc/manuals/R-exts.html#Package-subdirectories}{Files in the package \code{inst} directory are copied to the root directory on installation}, but not on \link[devtools:test]{testing}, which may cause tests to fail if your package uses non-R resources. This function fixes that by loading resources directly from \code{./inst} during testing.
}
\usage{
resource(path)
}
\arguments{
  \item{path}{
  The path to the target resource as a string with reference to \code{./inst}, \emph{e.g.} \code{"js/script.js"} if the full path is \code{/inst/js/script.js}
  }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\code{resource} returns the full absolute path of the target resource conditioned on whether the package is installed.
}
\references{
\href{https://cran.r-project.org/doc/manuals/R-exts.html#Package-subdirectories}{Writing R Extensions - Package subdirectories}
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
  \item \code{\link[devtools]{test}}
  }
}
