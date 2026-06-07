\name{my_github}
\alias{my_github}
\title{Install personal GitHub packages with pak}
\usage{
my_github(
  pkgs = c(
    "rolfmblindgren/talection/talection",
    "rolfmblindgren/neopiR",
    "rolfmblindgren/shinyseo",
    "rolfmblindgren/grendelshiny"
  ),
  ask = FALSE
)
}
\description{
Install a small set of personal GitHub packages using \pkg{pak}.
}
\arguments{
\item{pkgs}{Character vector of package references understood by \pkg{pak}.}
\item{ask}{Whether \pkg{pak} should ask before changing installed versions.}
}
\details{
The wrapper installs \pkg{pak} if needed, then temporarily sets
\code{GITHUB_PAT} from the environment (skipping the install with a message
if it is unset), and hands the package references to \code{pak::pkg_install()}.
}
\seealso{
\code{\link[pak]{pkg_install}}
}

