\name{type}
\alias{type}
\title{Check whether a library path contains a package directory}
\usage{
type(s)
}
\description{
Look through the active library paths and return the paths that contain a
directory named \code{s}.
}
\arguments{
\item{s}{The directory name to look for.}
}
\value{
Either \code{FALSE} if nothing is found, or a character vector of matching
library paths.
}

