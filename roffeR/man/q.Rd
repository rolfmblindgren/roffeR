\name{q}
\alias{q}
\title{Quit R without the workspace prompt}
\usage{
q(save = "no", status = 0, runLast = TRUE)
}
\description{
Exit R with \code{save = "no"} by default so you do not get asked whether to
save the workspace image.
}
\arguments{
\item{save}{Whether to save the workspace image. Defaults to \code{"no"}.}
\item{status}{Exit status passed to \code{base::q()}.}
\item{runLast}{Whether to run finalizers and last actions.}
}
\seealso{
\code{\link[base]{q}}
}

